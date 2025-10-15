#!/bin/bash

#Creacion de usuario

aws iam create-user --user-name test

#Asignacion de permisos
aws iam attach-user-policy --user-name test --policy-arn arn:aws:iam::aws:policy/AdministratorAccess
