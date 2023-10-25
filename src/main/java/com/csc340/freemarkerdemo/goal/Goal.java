package com.csc340.freemarkerdemo.goal;

import com.csc340.freemarkerdemo.task.*;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import jakarta.persistence.Transient;
import java.util.Date;
import java.util.List;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

/**
 *
 * @author sentini
 */
@AllArgsConstructor
@Entity
@Table(name = "goal")
@NoArgsConstructor
@Getter
@Setter
public class Goal {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private long goalId;

    private String title;
    private String detail;
    private Date target;
    private String status;

    public Goal(String title, String detail, Date target, String status,
            List<Task> tasks) {
        this.title = title;
        this.detail = detail;
        this.target = target;
        this.status = status;
        this.tasks = tasks;
    }

    @Transient
    private List<Task> tasks;

    public Goal(String title, String detail, Date target, String status) {
        this.title = title;
        this.detail = detail;
        this.target = target;
        this.status = status;
    }

}
