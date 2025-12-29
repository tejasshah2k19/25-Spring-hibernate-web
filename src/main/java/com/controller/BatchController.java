package com.controller;

import java.util.List;
import java.util.Optional;

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
		return "redirect:/listBatch";
	}

	@GetMapping("listBatch")
	public String listBatch(Model model) {
		List<BatchEntity> allBatch = batchRepository.findAll();// select * from batches
		model.addAttribute("allBatch", allBatch);
		return "ListBatch";
	}

	@GetMapping("deleteBatch")
	public String deleteBatch(Integer batchId) {
		batchRepository.deleteById(batchId);
		return "redirect:/listBatch";// url
	}

	@PostMapping("search")
	public String search(String batchName, Model model) {
		List<BatchEntity> allBatch = batchRepository.findByBatchNameContaining(batchName);// select * from batches
		model.addAttribute("allBatch", allBatch);
		return "ListBatch";
	}

	@GetMapping("viewBatch")
	public String viewBatch(Integer batchId, Model model) {
		// select * from batches where batchId = ?
		Optional<BatchEntity> op = batchRepository.findById(batchId);//
		if (op.isPresent()) {
			BatchEntity b = op.get();
			model.addAttribute("batch", b);
			return "ViewBatch";
		} else {
			return "";
		}
	}

	
	
	@GetMapping("editBatch")
	public String editBatch(Integer batchId, Model model) {
		// select * from batches where batchId = ?
		Optional<BatchEntity> op = batchRepository.findById(batchId);//
		if (op.isPresent()) {
			BatchEntity b = op.get();
			model.addAttribute("batch", b);
			model.addAttribute("batchStautsEnum", BatchStatusEnum.values());

			return "EditBatch";
		} else {
			return "";
		}
	}

	
 
	
	@PostMapping("updateBatch")
	public String updateBatch(BatchEntity batchEntity) {
		batchRepository.save(batchEntity);//insert{idX} update{db id} 
		return "redirect:/listBatch";
	}
	
	
	
	
}
