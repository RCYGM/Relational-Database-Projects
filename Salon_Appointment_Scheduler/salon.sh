#!/bin/bash

PSQL="psql --username=postgres --dbname=salon --tuples-only --no-align -c"

echo -e "\n~~~~~ MY SALON ~~~~~"

MAIN_MENU() {
    if [[ $1 ]]; then
        echo -e "\n$1"
    fi

    SERVICES=$($PSQL "SELECT service_id, name FROM services")

    if [[ -z $SERVICES ]]; then
        echo -e "\nNo services available."
    else
        echo "$SERVICES" | while IFS='|' read SERVICE_ID NAME_SERVICE; do
            echo "$SERVICE_ID) $NAME_SERVICE"
        done
    fi

    read SERVICE_ID_SELECTED

    SERVICE_NAME=$(echo "$SERVICES" | grep "^$SERVICE_ID_SELECTED" | cut -d '|' -f 2)

    if [[ ! $SERVICE_ID_SELECTED =~ ^[0-9]+$ ]]; then
        MAIN_MENU "You have to enter the service number. What is the service number you want?"

    else
        case $SERVICE_ID_SELECTED in
        1 | 2 | 3 | 4 | 5) GET_SERVICE ;;
            #cut #color #perm #style #trim
        *) MAIN_MENU "I could not find that service. What would you like today?" ;;
        esac

    fi

}

GET_SERVICE() {
    echo -e "\nWhat's your phone number?"
    read CUSTOMER_PHONE

    CUSTOMER_DATA=$($PSQL "SELECT customer_id, name FROM customers WHERE phone = '$CUSTOMER_PHONE';")
    CUSTOMER_NAME=$(echo "$CUSTOMER_DATA" | cut -d '|' -f 2)
    CUSTOMER_ID=$(echo "$CUSTOMER_DATA" | cut -d '|' -f 1)

    if [[ -z $CUSTOMER_NAME ]]; then
        echo -e "\nI don't have a record for that phone number, what's your name?"
        read CUSTOMER_NAME

        INSERT_CUSTOMER_RESULT=$($PSQL "INSERT INTO customers(name, phone) VALUES('$CUSTOMER_NAME', '$CUSTOMER_PHONE')")
        CUSTOMER_DATA=$($PSQL "SELECT customer_id, name FROM customers WHERE phone = '$CUSTOMER_PHONE';")
        CUSTOMER_NAME=$(echo "$CUSTOMER_DATA" | cut -d '|' -f 2)
        CUSTOMER_ID=$(echo "$CUSTOMER_DATA" | cut -d '|' -f 1)

        echo -e "\nWhat time would you like your $SERVICE_NAME, $CUSTOMER_NAME?"
        read SERVICE_TIME

        INSERT_APPOINTMENTS_RESULT=$($PSQL "INSERT INTO appointments(customer_id, service_id, time) VALUES($CUSTOMER_ID, $SERVICE_ID_SELECTED, '$SERVICE_TIME')")

        echo -e "\nI have put you down for a $SERVICE_NAME at $SERVICE_TIME, $CUSTOMER_NAME."
    else
        echo -e "\nWhat time would you like your $SERVICE_NAME, $CUSTOMER_NAME?"
        read SERVICE_TIME
        INSERT_APPOINTMENTS_RESULT=$($PSQL "INSERT INTO appointments(customer_id, service_id, time) VALUES($CUSTOMER_ID, $SERVICE_ID_SELECTED, '$SERVICE_TIME')")

        echo -e "\nI have put you down for a $SERVICE_NAME at $SERVICE_TIME, $CUSTOMER_NAME."
    fi
}

MAIN_MENU "Welcome to My Salon, how can I help you?"
