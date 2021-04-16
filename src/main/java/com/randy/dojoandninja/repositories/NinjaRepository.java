package com.randy.dojoandninja.repositories;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.randy.dojoandninja.models.Ninja;

@Repository
public interface NinjaRepository extends CrudRepository<Ninja, Long> {

}
