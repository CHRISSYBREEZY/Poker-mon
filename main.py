import pygame
import config
from game_state import GameState
import mysql.connector
from game import Game
#Importerer fra de forskjellige filene og databasen.

pygame.init()

player_locationDB = mysql.connector.connect(
    host="localhost",
    user="root",
    password="",
    database="pokemon"
)
dbCusrsor = player_locationDB.cursor()

screen = pygame.display.set_mode((600, 400))

pygame.display.set_caption("Pokemon Clone")

clock = pygame.time.Clock() 

game = Game(screen)
game.set_up()

while game.game_state == GameState.RUNNING:
    clock.tick(50)
    game.update()
    pygame.display.flip()
