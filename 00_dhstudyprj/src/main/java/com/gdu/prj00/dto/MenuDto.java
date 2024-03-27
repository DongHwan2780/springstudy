package com.gdu.prj00.dto;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@AllArgsConstructor
@NoArgsConstructor
@Data
@Builder
public class MenuDto {
  private int menuNo;
  private String bob;
  private String gook;
  private String banchan1;
  private String banchan2;  
}
