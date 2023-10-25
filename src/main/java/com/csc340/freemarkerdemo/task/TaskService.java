package com.csc340.freemarkerdemo.task;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author sentini
 */
@Service
public class TaskService {

    @Autowired
    private TaskRepository repo;

    public Task getTaskById(long id) {
        return repo.getReferenceById(id);
    }

    public List<Task> getAllTasks() {
        return repo.findAll();
    }

    public void saveTask(Task task) {
        repo.save(task);
    }

    public void updateTask(Task task) {
        Task existing = getTaskById(task.getTaskId());

        existing.setTitle(task.getTitle());
        existing.setStatus(task.getStatus());
        repo.save(existing);
    }

    public void deleteTaskById(long id) {
        repo.deleteById(id);
    }

    public List<Task> getTasksByGoalNumber(long goalId) {
        return repo.findTasksByGoalNumber(goalId);
    }
}
