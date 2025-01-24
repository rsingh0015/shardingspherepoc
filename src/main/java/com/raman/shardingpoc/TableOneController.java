package com.raman.shardingpoc;

import com.raman.shardingpoc.repositories.TableOneRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class TableOneController {

    private final TableOneRepo tableOneRepo;

    @Autowired
    public TableOneController(TableOneRepo tableOneRepo) {
        this.tableOneRepo = tableOneRepo;
    }

    @GetMapping(value = "test_sharding")
    public String test_sharding() {
        return tableOneRepo.findByFirstName("TestName").get(0).getFirstName();
    }

}
