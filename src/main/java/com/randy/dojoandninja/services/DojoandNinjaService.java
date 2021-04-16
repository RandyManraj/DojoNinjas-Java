package com.randy.dojoandninja.services;

import java.util.List;
import java.util.Optional;

import org.springframework.stereotype.Service;

import com.randy.dojoandninja.models.Dojo;
import com.randy.dojoandninja.models.Ninja;
import com.randy.dojoandninja.repositories.DojoRepository;
import com.randy.dojoandninja.repositories.NinjaRepository;


@Service
public class DojoandNinjaService {
	private NinjaRepository ninjaRepo;
	private DojoRepository dojoRepo;
	
	public DojoandNinjaService(NinjaRepository ninjaRepo, DojoRepository dojoRepo ){
		this.ninjaRepo = ninjaRepo;
		this.dojoRepo = dojoRepo;
	}
	
	public Ninja create(Ninja toCreate) {
		return ninjaRepo.save(toCreate);
	}
	
	public Dojo create(Dojo toCreate) {
		return dojoRepo.save(toCreate);
	}
	public List<Ninja> getAllNinjas(){
		return (List<Ninja>) ninjaRepo.findAll();
	}
	public List<Dojo> getAllDojos(){
		System.out.println((List<Dojo>) dojoRepo.findAll());
		return (List<Dojo>) dojoRepo.findAll();
	}
	public Dojo getOneDojo(Long id) {
    	Optional<Dojo> optionalDojo = this.dojoRepo.findById(id);
    	if(optionalDojo.isPresent()) {
            return optionalDojo.get();
        } else {
            return null;
        }
    }

}
