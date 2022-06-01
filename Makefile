lint:   
    pylint --disable=R,C *.py

format: 
    black *.py


all:    
    install lint format

