
package com.csc340.freemarkerdemo.task;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
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
@Table(name = "task")
@NoArgsConstructor
@Getter
@Setter
public class Task {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private long taskId;
    private String title;
    private String detail;
    private String status;

    private long goalNumber;

    public Task(String title, String detail, String status, long goalId) {
        this.title = title;
        this.detail = detail;
        this.status = status;
        this.goalNumber = goalId;
    }

}
