CREATE TABLE `trackers`.`itinerary` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `user_id` INT NOT NULL,
  `start_point` VARCHAR(45) NULL,
  `end_point` VARCHAR(45) NULL,
  `start_date_time` DATETIME NULL,
  `end_date_time` DATETIME NULL,
  `transportation_id` INT NOT NULL,
  PRIMARY KEY (`id`));
