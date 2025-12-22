package com.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.entity.BatchEntity;
import com.repository.BatchRepository;

import enums.BatchStatusEnum;

@Controller
public class BatchController {

	@Autowired // singleton -> DI -> spring -> IOC
	BatchRepository batchRepository;

	@GetMapping(value = { "newBatch", "newbatch" })
	public String newBatch(Model model) {
		model.addAttribute("batchStautsEnum", BatchStatusEnum.values());
		return "NewBatch";
	}

	@PostMapping("saveBatch")
	public String saveBatch(BatchEntity batchEntity) {
		batchRepository.save(batchEntity);
		return "NewBatch";
	}

	@GetMapping("listBatch")
	public String listBatch(Model model) {
		List<BatchEntity> allBatch = batchRepository.findAll();//select * from batches 
		model.addAttribute("allBatch",allBatch);
		return "ListBatch";
	}

}
