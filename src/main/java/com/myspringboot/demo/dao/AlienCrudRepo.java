package com.myspringboot.demo.dao;

import com.myspringboot.demo.dto.AlienEntity;
import org.springframework.data.repository.CrudRepository;

public interface AlienCrudRepo extends CrudRepository<AlienEntity, Integer> {
}
