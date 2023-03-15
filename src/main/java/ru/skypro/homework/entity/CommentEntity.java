package ru.skypro.homework.entity;

import lombok.*;

import javax.persistence.*;
import java.time.LocalDate;
import java.util.Date;


@Entity
@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
@Table(name = "comments")
public class CommentEntity {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;
    private String text;
    private LocalDate createdAt;

    @ManyToOne
    @JoinColumn(name="ads_id")
    private AdsEntity ads;

    @ManyToOne
    @JoinColumn(name = "author_id")
    private UserEntity author;
}
