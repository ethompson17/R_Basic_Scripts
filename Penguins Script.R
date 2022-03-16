id <- c(1:10)

name <- c("John Mendes", "Rob Stewart", "Rachel Abrahamson", "Christy Hickman", "Johnson Harper", "Candace Miller", "Carlson Landy", "Pansy Jordan", "Darius Berry", "Claudia Garcia")

job_title <- c("Prof", "Programmer", "Management", "Clerical", "Developer", "Programmer", "Management", "Clerical", "Developer", "Programmer")

employee <- data.frame(id, name, job_title)

print(employee)

separate(employee, name, into = c('firstname', 'lastname'), sep=' ')

pkg <- penguins %>% mutate(bodymasskg = body_mass_g/1000)
#there is now a bodymass(kg) column
View(pkg)


penguins %>% arrange(bill_length_mm)

actualsales <- c(12, 14.2, 16.5, 18.3, 13.8)
predictedsales <- c(11.8, 13.7, 16, 17.9, 14.3)

#to show how close the predictions are to the actual sales
bias(actualsales, predictedsales)


ggplot(data=penguins) +
  geom_point(mapping = aes(x=flipper_length_mm, y=body_mass_g, col=species, pch=sex),main="Flipper Length vs. Body Mass (g)")+
  geom_smooth(mapping = aes(x=flipper_length_mm, y=body_mass_g, col=species))


ggplot(data=diamonds)+
  geom_bar(mapping=aes(x=cut,fill=clarity))


penguins %>% filter(sex!= "NA") %>% ggplot() +
  geom_point(mapping = aes(x=flipper_length_mm, y=body_mass_g, col=species, pch=sex))+
  geom_smooth(mapping = aes(x=flipper_length_mm, y=body_mass_g, col=species))+
  facet_wrap(~species)+
  labs(title = "Palmer Penguins: Flipper Length vs. Body Mass", subtitle = "Sample of Three Male and Female Penguin Species", caption = "Data collected from 2007 to 2009 by Dr. Kristen Gorman")+
  annotate("text", x=220,y=3500, label="The Gentoos are the largest", fontface="bold",size=4.5, angle=25)


ggplot(data=diamonds)+
  geom_bar(mapping=aes(x=cut,fill=clarity))+
  facet_wrap(~clarity)

ggplot(data=diamonds)+
  geom_bar(mapping=aes(x=cut,fill=clarity))+
  facet_grid(cut~clarity)
