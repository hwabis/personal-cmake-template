#include "adder.hh"
#include <SDL3/SDL.h>

int Adder::Add(int a, int b)
{
    SDL_Log("Adding");
    return a + b;
}
