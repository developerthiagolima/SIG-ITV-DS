package org.itv.sig.service.impl;

import org.itv.sig.repository.MunicipioRepository;
import org.itv.sig.service.MunicipioService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@Transactional
public class MunicipioServiceImpl implements MunicipioService{

	@Autowired
    private MunicipioRepository municipioRepository;
}
