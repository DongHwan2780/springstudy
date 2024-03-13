package com.gdu.prj01.anno01;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@NoArgsConstructor
@AllArgsConstructor
@Data
@Builder
public class Computer {
  private String model;
  private int price;
  private Calculator calculator;
}
