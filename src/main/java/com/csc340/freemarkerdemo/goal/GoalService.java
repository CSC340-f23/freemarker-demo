
package com.csc340.freemarkerdemo.goal;
import com.csc340.freemarkerdemo.task.Task;
import com.csc340.freemarkerdemo.task.TaskRepository;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author sentini
 */
@Service
public class GoalService {

    @Autowired
    private GoalRepository repo;

    @Autowired
    private TaskRepository taskRepo;

    public Goal getGoalById(long id) {
        Goal goal = repo.getReferenceById(id);
        goal.setTasks(taskRepo.findTasksByGoalNumber(id));
        return goal;
    }

    public List<Goal> getAllGoals() {
        List<Goal> goalList = repo.findAll();
        for (Goal goal : goalList) {
            goal.setTasks(taskRepo.findTasksByGoalNumber(goal.getGoalId()));
        }
        return goalList;
    }

    public void deleteGoalById(long id) {
        repo.deleteById(id);
    }

    public void saveGoal(Goal goal) {
        repo.save(goal);
    }

    public void deleteGoalByIdEager(long goalId) {
        List<Task> tasks = taskRepo.findTasksByGoalNumber(goalId);
        for (Task task : tasks) {
            taskRepo.delete(task);
        }
        repo.deleteById(goalId);
    }
}
