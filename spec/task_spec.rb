require("spec_helper")

describe(Task) do
  describe(".not_done") do
    it("returns the not done tasks") do
      not_done_task1 = Task.create({:description => "gotta do it", :done => false})
      not_done_task2 = Task.create({:description => "gotta do it too", :done => false})
      not_done_tasks = [not_done_task1, not_done_task2]
      done_task = Task.create({:description => "done task", :done => true})
      expect(Task.not_done()).to(eq(not_done_tasks))
    end
  end  
end
