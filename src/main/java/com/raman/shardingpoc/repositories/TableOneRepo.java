package com.raman.shardingpoc.repositories;

import com.raman.shardingpoc.entities.TableOne;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface TableOneRepo extends CrudRepository<TableOne, String> {

    List<TableOne> findByFirstName(String firstName);
}
