#!/bin/bash

#Creacion de usuario

aws iam create-user --user-name test

#Asignacion de permisos
aws iam attach-user-policy --user-name test --policy-arn arn:aws:iam::aws:policy/AdministratorAccess

#Resolucion de problema 1

#Creacion de usuarios
aws iam create-user --user-name Usuario1
aws iam create-user --user-name Usuario2
aws iam create-user --user-name Usuario3

#Asignacion de permisos
aws iam attach-user-policy --user-name Usuario1 --policy-arn arn:aws:iam::aws:policy/IAMReadOnlyAccess
aws iam attach-user-policy --user-name Usuario2 --policy-arn arn:aws:iam::aws:policy/IAMReadOnlyAccess
aws iam attach-user-policy --user-name Usuario3 --policy-arn arn:aws:iam::aws:policy/IAMReadOnlyAccess

#Verificacion de permisos
aws iam list-attached-user-policies --user-name Usuario1
aws iam list-attached-user-policies --user-name Usuario2
aws iam list-attached-user-policies --user-name Usuario3


