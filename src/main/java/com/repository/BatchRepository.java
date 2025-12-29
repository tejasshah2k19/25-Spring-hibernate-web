package com.repository;

import java.time.LocalDate;
import java.util.List;

import org.hibernate.engine.jdbc.batch.spi.Batch;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.entity.BatchEntity;

@Repository
public interface BatchRepository extends JpaRepository<BatchEntity, Integer> {

	List<BatchEntity> findByBatchNameContaining(String batchName);

	// jpa - hibernate -> findByXXXX();
	// select * from batches where batchStatus = 'IN_PROGRESS';

	// select * from batches where batchName = 'java';
	List<BatchEntity> findByBatchName(String batchName);

	List<BatchEntity> findByStartDate(LocalDate startDate);

}
