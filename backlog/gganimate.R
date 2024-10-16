



sunshine = sunshine[, c("Jahr", "Deutschland")]


library(ggplot2)

library(gganimate)
library(gifski)


ggplot(sunshine, aes(x = Jahr, y = Deutschland))+
    geom_point()+
    gganimate::enter_grow()+
    gganimate::transition_states(Jahr, wrap = FALSE, transition_length = 5, state_length = 10)+
    gganimate::shadow_mark()





dplyr::filter()





ggplot(sunshine, aes(x = Jahr, y = Deutschland))+
    geom_point(size = 2, aes(color = Deutschland))+
    scale_color_gradientn(colors = viridis::mako(50))+
    gganimate::enter_grow()+
    gganimate::transition_states(Jahr, wrap = FALSE, transition_length = 5, state_length = 10)+
    gganimate::shadow_mark(color = 'grey50', size = 1, past = TRUE, future = TRUE)






ggplot(sunshine, aes(x = Jahr, y = Deutschland))+
    geom_point()+
    gganimate::enter_grow()+
    labs(title = 'Year: {frame_time}')+
    gganimate::transition_time(Jahr)+
    gganimate::shadow_mark()






ggplot(sunshine, aes(x = Jahr, y = Deutschland))+
    #geom_point()+
    geom_line()




