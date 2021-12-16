CREATE TABLE `notes` (
   `id` INT NOT NULL AUTO_INCREMENT,
   `title` VARCHAR(100) NOT NULL,
   `date_creation` DATE NOT NULL,
   `date_modify` DATE NOT NULL,
   `description` VARCHAR(500) NOT NULL,
   `delete_note` TINYINT(1) NOT NULL,
   `catgory_id` INT NOT NULL,
   `user_id` INT NOT NULL,
   PRIMARY KEY (`id`)
);

CREATE TABLE `categories` (
   `id` INT NOT NULL AUTO_INCREMENT,
   `name` VARCHAR(50) NOT NULL,
   PRIMARY KEY (`id`)
);

CREATE TABLE `users` (
   `id` INT NOT NULL AUTO_INCREMENT,
   `name` VARCHAR(100) NOT NULL,
   `email` VARCHAR(100) NOT NULL,
   `note_id` INT NOT NULL,
   PRIMARY KEY (`id`)
);

CREATE TABLE `note_category` (
   `id` INT NOT NULL,
   `note_id` INT NOT NULL,
   `category_id` INT NOT NULL,
   PRIMARY KEY (`id`)
);


ALTER TABLE `notes` ADD CONSTRAINT `FK_f90a5c8a-a5e8-495e-94a3-be6d33857807` FOREIGN KEY (`catgory_id`) REFERENCES `categories`(`id`);

ALTER TABLE `notes` ADD CONSTRAINT `FK_ebf7beef-3e40-4ddd-b6ec-eac4d1dc2787` FOREIGN KEY (`user_id`) REFERENCES `users`(`id`);

ALTER TABLE `users` ADD CONSTRAINT `FK_374c0ebf-3fc0-4ac3-9d7e-142ddd42863a` FOREIGN KEY (`note_id`) REFERENCES `notes`(`id`);

ALTER TABLE `note_category` ADD CONSTRAINT `FK_87c34643-6414-4bc6-8a73-dc3cadc6b19b` FOREIGN KEY (`note_id`) REFERENCES `notes`(`id`);

ALTER TABLE `note_category` ADD CONSTRAINT `FK_2c886c65-aa0b-4136-bcf3-705310b6dea1` FOREIGN KEY (`category_id`) REFERENCES `categories`(`id`);
