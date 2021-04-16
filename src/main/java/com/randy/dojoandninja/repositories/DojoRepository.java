package com.randy.dojoandninja.repositories;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.randy.dojoandninja.models.Dojo;

@Repository
public interface DojoRepository extends CrudRepository<Dojo, Long> {

}
