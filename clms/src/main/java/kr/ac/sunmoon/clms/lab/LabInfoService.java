package kr.ac.sunmoon.clms.lab;

import java.util.List;

public interface LabInfoService {
	public List<Lab> list();
	public Lab view(int no);
	public void register(Lab lab);
	public void modify(Lab lab);
	public void remove(int no);
	public int check(int no);
}
