package com.myspringboot.demo.dao;

import com.myspringboot.demo.dto.AlienDoc;
import org.springframework.data.mongodb.repository.MongoRepository;

public interface AlienMongoRepo extends MongoRepository<AlienDoc, String> {
}
