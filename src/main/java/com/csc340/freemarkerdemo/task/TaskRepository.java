package com.csc340.freemarkerdemo.task;

import java.util.List;
import org.springframework.data.jpa.repository.JpaRepository;

/**
 *
 * @author sentini
 */
public interface TaskRepository extends JpaRepository<Task, Long> {

    public List<Task> findTasksByGoalNumber(long goalNumber);

}
