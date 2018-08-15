package com.internousdev.glanq.dto.test;

import static org.junit.Assert.*;

import org.junit.Test;

import com.internousdev.glanq.dto.DestinationInfoDTO;

public class DestinationInfoDTOTest {

	@Test
	public void testGetId1() {
		DestinationInfoDTO dto = new DestinationInfoDTO();
			int expected = 0;

			dto.setId(expected);
			int actual = dto.getId();
			assertEquals(expected,actual);
	}

	@Test
	public void testGetId2() {
		DestinationInfoDTO dto = new DestinationInfoDTO();
		int expected = 2147483647;

		dto.setId(expected);
		int actual = dto.getId();
		assertEquals(expected,actual);
	}

	@Test
	public void testGetId3() {
		DestinationInfoDTO dto = new DestinationInfoDTO();
		int expected = 2147483647;

		dto.setId(expected);
		int actual = dto.getId();
		assertEquals(expected,actual);
	}

	@Test
	public void testGetId4() throws Exception{
		DestinationInfoDTO dto = new DestinationInfoDTO();
		try{
			int postalMax = Integer.parseInt("214748364");
			dto.setId(postalMax);
		}catch(RuntimeException e){
			assertEquals(e.getMessage(), "For input string: \"2147483648\"");
		}
	}
	@Test
	public void testGetId5() throws Exception{
		DestinationInfoDTO dto = new DestinationInfoDTO();
		try{
			int postalMin = Integer.parseInt("-214748364");
			dto.setId(postalMin);
		}catch(RuntimeException e){
			assertEquals(e.getMessage(), "For input string: \"-2147483648\"");
		}
	}
	//set Id test

	@Test
	public void testSetId1() {
		DestinationInfoDTO dto = new DestinationInfoDTO();
		int expected = 0;

		dto.setId(expected);
		int actual = dto.getId();
		assertEquals(expected,actual);

	}

	@Test
	public void testSetId2() {
		DestinationInfoDTO dto = new DestinationInfoDTO();
		int expected = 2147483647;

		dto.setId(expected);
		int actual = dto.getId();
		assertEquals(expected,actual);
	}

	@Test
	public void testSetId3() {
		DestinationInfoDTO dto = new DestinationInfoDTO();
		int expected = -2147483647;

		dto.setId(expected);
		int actual = dto.getId();
		assertEquals(expected,actual);
	}

	@Test
	public void testSetId4() throws Exception{
		DestinationInfoDTO dto = new DestinationInfoDTO();
		try{
			int postalMax = Integer.parseInt("214748364");
			dto.setId(postalMax);
		}catch(RuntimeException e){
			assertEquals(e.getMessage(), "For input string: \"2147483648\"");
		}
	}

	@Test
	public void testSetId5() throws Exception{
		DestinationInfoDTO dto = new DestinationInfoDTO();
		try{
			int postalMin = Integer.parseInt("-214748364");
			dto.setId(postalMin);
		}catch(RuntimeException e){
			assertEquals(e.getMessage(), "For input string: \"-2147483648\"");
		}
	}



	@Test
	public void testGetUserId1() {
		DestinationInfoDTO dto = new DestinationInfoDTO();
		String expected = "0";

		dto.setUserId(expected);
		String actual = dto.getUserId();
		assertEquals(expected, actual);
	}

	@Test
	public void testGetUserId2() {
		DestinationInfoDTO dto = new DestinationInfoDTO();
		String expected = "2147483647";

		dto.setUserId(expected);
		String actual = dto.getUserId();
		assertEquals(expected, actual);

	}

	@Test
	public void testGetUserId3() {
		DestinationInfoDTO dto = new DestinationInfoDTO();
		String expected = "-2147483647";

		dto.setUserId(expected);
		String actual = dto.getUserId();
		assertEquals(expected, actual);
	}

	@Test
	public void testGetUserId4() {
		DestinationInfoDTO dto = new DestinationInfoDTO();
		String expected = "null";

		dto.setUserId(expected);
		String actual = dto.getUserId();
		assertEquals(expected, actual);
	}

	@Test
	public void testGetUserId5() {
		DestinationInfoDTO dto = new DestinationInfoDTO();
		String expected = "";

		dto.setUserId(expected);
		String actual = dto.getUserId();
		assertEquals(expected, actual);
	}

	@Test
	public void testGetUserId6() {
		DestinationInfoDTO dto = new DestinationInfoDTO();
		String expected = " ";

		dto.setUserId(expected);
		String actual = dto.getUserId();
		assertEquals(expected, actual);
	}

	@Test
	public void testGetUserId7() {
		DestinationInfoDTO dto = new DestinationInfoDTO();
		String expected = "　";

		dto.setUserId(expected);
		String actual = dto.getUserId();
		assertEquals(expected, actual);
	}

	@Test
	public void testGetUserId8() {
		DestinationInfoDTO dto = new DestinationInfoDTO();
		String expected = "abc123";

		dto.setUserId(expected);
		String actual = dto.getUserId();
		assertEquals(expected, actual);
	}

	@Test
	public void testGetUserId9() {
		DestinationInfoDTO dto = new DestinationInfoDTO();
		String expected = "あいう１２３";

		dto.setUserId(expected);
		String actual = dto.getUserId();
		assertEquals(expected, actual);
	}

	@Test
	public void testGetUserId10() {
		DestinationInfoDTO dto = new DestinationInfoDTO();
		String expected = "abc123あいう１２３";

		dto.setUserId(expected);
		String actual = dto.getUserId();
		assertEquals(expected, actual);
	}

	@Test
	public void testGetUserId11() {
		DestinationInfoDTO dto = new DestinationInfoDTO();
		String expected = "abc123あいう１２３漢字";

		dto.setUserId(expected);
		String actual = dto.getUserId();
		assertEquals(expected, actual);
	}

	@Test
	public void testGetUserId12() {
		DestinationInfoDTO dto = new DestinationInfoDTO();
		String expected = "ａｂｃあいう１２３漢字";

		dto.setUserId(expected);
		String actual = dto.getUserId();
		assertEquals(expected, actual);
	}

	//set UserId test

	@Test
	public void testSetUserId1() {
		DestinationInfoDTO dto = new DestinationInfoDTO();
		String expected="0";

		dto.setUserId(expected);
		String actual = dto.getUserId();
		assertEquals(expected, actual);
	}

	@Test
	public void testSetUserId2() {
		DestinationInfoDTO dto = new DestinationInfoDTO();
		String expected="2147483647";

		dto.setUserId(expected);
		String actual = dto.getUserId();
		assertEquals(expected, actual);
	}

	@Test
	public void testSetUserId3() {
		DestinationInfoDTO dto = new DestinationInfoDTO();
		String expected="-2147483647";

		dto.setUserId(expected);
		String actual = dto.getUserId();
		assertEquals(expected, actual);
	}

	@Test
	public void testSetUserId4() {
		DestinationInfoDTO dto = new DestinationInfoDTO();
		String expected="null";

		dto.setUserId(expected);
		String actual = dto.getUserId();
		assertEquals(expected, actual);
	}

	@Test
	public void testSetUserId5() {
		DestinationInfoDTO dto = new DestinationInfoDTO();
		String expected="";

		dto.setUserId(expected);
		String actual = dto.getUserId();
		assertEquals(expected, actual);
	}

	@Test
	public void testSetUserId6() {
		DestinationInfoDTO dto = new DestinationInfoDTO();
		String expected=" ";

		dto.setUserId(expected);
		String actual = dto.getUserId();
		assertEquals(expected, actual);
	}

	@Test
	public void testSetUserId7() {
		DestinationInfoDTO dto = new DestinationInfoDTO();
		String expected="　";

		dto.setUserId(expected);
		String actual = dto.getUserId();
		assertEquals(expected, actual);
	}

	@Test
	public void testSetUserId8() {
		DestinationInfoDTO dto = new DestinationInfoDTO();
		String expected="abc123";

		dto.setUserId(expected);
		String actual = dto.getUserId();
		assertEquals(expected, actual);
	}

	@Test
	public void testSetUserId9() {
		DestinationInfoDTO dto = new DestinationInfoDTO();
		String expected="あいう１２３";

		dto.setUserId(expected);
		String actual = dto.getUserId();
		assertEquals(expected, actual);
	}

	@Test
	public void testSetUserId10() {
		DestinationInfoDTO dto = new DestinationInfoDTO();
		String expected="abc123あいう１２３";

		dto.setUserId(expected);
		String actual = dto.getUserId();
		assertEquals(expected, actual);
	}

	@Test
	public void testSetUserId11() {
		DestinationInfoDTO dto = new DestinationInfoDTO();
		String expected="abcあいう１２３漢字";

		dto.setUserId(expected);
		String actual = dto.getUserId();
		assertEquals(expected, actual);
	}

	@Test
	public void testSetUserId12() {
		DestinationInfoDTO dto = new DestinationInfoDTO();
		String expected="ａｂｃあいう１２３漢字";

		dto.setUserId(expected);
		String actual = dto.getUserId();
		assertEquals(expected, actual);
	}

	//get FamilyName test
	@Test
	public void testGetFamilyName1() {
		DestinationInfoDTO dto = new DestinationInfoDTO();
		String expected="0";

		dto.setFamilyName(expected);
		String actual = dto.getFamilyName();
		assertEquals(expected, actual);
	}

	@Test
	public void testGetFamilyName2() {
		DestinationInfoDTO dto = new DestinationInfoDTO();
		String expected="2147483647";

		dto.setFamilyName(expected);
		String actual = dto.getFamilyName();
		assertEquals(expected, actual);
	}

	@Test
	public void testGetFamilyName3() {
		DestinationInfoDTO dto = new DestinationInfoDTO();
		String expected="-2147483647";

		dto.setFamilyName(expected);
		String actual = dto.getFamilyName();
		assertEquals(expected, actual);
	}

	@Test
	public void testGetFamilyName4() {
		DestinationInfoDTO dto = new DestinationInfoDTO();
		String expected="null";

		dto.setFamilyName(expected);
		String actual = dto.getFamilyName();
		assertEquals(expected, actual);
	}

	@Test
	public void testGetFamilyName5() {
		DestinationInfoDTO dto = new DestinationInfoDTO();
		String expected="";

		dto.setFamilyName(expected);
		String actual = dto.getFamilyName();
		assertEquals(expected, actual);
	}

	@Test
	public void testGetFamilyName6() {
		DestinationInfoDTO dto = new DestinationInfoDTO();
		String expected=" ";

		dto.setFamilyName(expected);
		String actual = dto.getFamilyName();
		assertEquals(expected, actual);
	}

	@Test
	public void testGetFamilyName7() {
		DestinationInfoDTO dto = new DestinationInfoDTO();
		String expected="　";

		dto.setFamilyName(expected);
		String actual = dto.getFamilyName();
		assertEquals(expected, actual);
	}

	@Test
	public void testGetFamilyName8() {
		DestinationInfoDTO dto = new DestinationInfoDTO();
		String expected="abc123";

		dto.setFamilyName(expected);
		String actual = dto.getFamilyName();
		assertEquals(expected, actual);
	}

	@Test
	public void testGetFamilyName9() {
		DestinationInfoDTO dto = new DestinationInfoDTO();
		String expected="abc123";

		dto.setFamilyName(expected);
		String actual = dto.getFamilyName();
		assertEquals(expected, actual);
	}

	@Test
	public void testGetFamilyName10() {
		DestinationInfoDTO dto = new DestinationInfoDTO();
		String expected="abc123あいう１２３";

		dto.setFamilyName(expected);
		String actual = dto.getFamilyName();
		assertEquals(expected, actual);
	}

	@Test
	public void testGetFamilyName11() {
		DestinationInfoDTO dto = new DestinationInfoDTO();
		String expected="abc123あいう１２３漢字";

		dto.setFamilyName(expected);
		String actual = dto.getFamilyName();
		assertEquals(expected, actual);
	}

	@Test
	public void testGetFamilyName12() {
		DestinationInfoDTO dto = new DestinationInfoDTO();
		String expected="ａｂｃあいう１２３漢字";

		dto.setFamilyName(expected);
		String actual = dto.getFamilyName();
		assertEquals(expected, actual);
	}

	// set Family Name test
	@Test

	public void testSetFamilyName1() {
		DestinationInfoDTO dto = new DestinationInfoDTO();
		String expected="0";

		dto.setFamilyName(expected);
		String actual = dto.getFamilyName();
		assertEquals(expected, actual);
	}

	@Test
	public void testSetFamilyName2() {
		DestinationInfoDTO dto = new DestinationInfoDTO();
		String expected="2147483647";

		dto.setFamilyName(expected);
		String actual = dto.getFamilyName();
		assertEquals(expected, actual);
	}

	@Test
	public void testSetFamilyName3() {
		DestinationInfoDTO dto = new DestinationInfoDTO();
		String expected="-2147483647";

		dto.setFamilyName(expected);
		String actual = dto.getFamilyName();
		assertEquals(expected, actual);
	}

	@Test
	public void testSetFamilyName4() {
		DestinationInfoDTO dto = new DestinationInfoDTO();
		String expected="null";

		dto.setFamilyName(expected);
		String actual = dto.getFamilyName();
		assertEquals(expected, actual);
	}

	@Test
	public void testSetFamilyName5() {
		DestinationInfoDTO dto = new DestinationInfoDTO();
		String expected="";

		dto.setFamilyName(expected);
		String actual = dto.getFamilyName();
		assertEquals(expected, actual);
	}

	@Test
	public void testSetFamilyName6() {
		DestinationInfoDTO dto = new DestinationInfoDTO();
		String expected=" ";

		dto.setFamilyName(expected);
		String actual = dto.getFamilyName();
		assertEquals(expected, actual);
	}

	@Test
	public void testSetFamilyName7() {
		DestinationInfoDTO dto = new DestinationInfoDTO();
		String expected="　";

		dto.setFamilyName(expected);
		String actual = dto.getFamilyName();
		assertEquals(expected, actual);
	}

	@Test
	public void testSetFamilyName8() {
		DestinationInfoDTO dto = new DestinationInfoDTO();
		String expected="abc123";

		dto.setFamilyName(expected);
		String actual = dto.getFamilyName();
		assertEquals(expected, actual);
	}

	@Test
	public void testSetFamilyName9() {
		DestinationInfoDTO dto = new DestinationInfoDTO();
		String expected="abc123";

		dto.setFamilyName(expected);
		String actual = dto.getFamilyName();
		assertEquals(expected, actual);
	}

	@Test
	public void testSetFamilyName10() {
		DestinationInfoDTO dto = new DestinationInfoDTO();
		String expected="abc123あいう１２３";

		dto.setFamilyName(expected);
		String actual = dto.getFamilyName();
		assertEquals(expected, actual);
	}

	@Test
	public void testSetFamilyName11() {
		DestinationInfoDTO dto = new DestinationInfoDTO();
		String expected="abc123あいう１２３漢字";

		dto.setFamilyName(expected);
		String actual = dto.getFamilyName();
		assertEquals(expected, actual);
	}

	@Test
	public void testSetFamilyName12() {
		DestinationInfoDTO dto = new DestinationInfoDTO();
		String expected="ａｂｃあいう１２３漢字";

		dto.setFamilyName(expected);
		String actual = dto.getFamilyName();
		assertEquals(expected, actual);
	}

	//get FirstName test
	@Test
	public void testGetFirstName1() {
		DestinationInfoDTO dto = new DestinationInfoDTO();
		String expected="0";

		dto.setFirstName(expected);
		String actual = dto.getFirstName();
		assertEquals(expected, actual);
	}

	@Test
	public void testGetFirstName2() {
		DestinationInfoDTO dto = new DestinationInfoDTO();
		String expected="2147483647";

		dto.setFirstName(expected);
		String actual = dto.getFirstName();
		assertEquals(expected, actual);
	}

	@Test
	public void testGetFirstName3() {
		DestinationInfoDTO dto = new DestinationInfoDTO();
		String expected="-2147483647";

		dto.setFirstName(expected);
		String actual = dto.getFirstName();
		assertEquals(expected, actual);
	}

	@Test
	public void testGetFirstName4() {
		DestinationInfoDTO dto = new DestinationInfoDTO();
		String expected="null";

		dto.setFirstName(expected);
		String actual = dto.getFirstName();
		assertEquals(expected, actual);
	}

	@Test
	public void testGetFirstName5() {
		DestinationInfoDTO dto = new DestinationInfoDTO();
		String expected="";

		dto.setFirstName(expected);
		String actual = dto.getFirstName();
		assertEquals(expected, actual);
	}

	@Test
	public void testGetFirstName6() {
		DestinationInfoDTO dto = new DestinationInfoDTO();
		String expected= " ";

		dto.setFirstName(expected);
		String actual = dto.getFirstName();
		assertEquals(expected, actual);
	}

	@Test
	public void testGetFirstName7() {
		DestinationInfoDTO dto = new DestinationInfoDTO();
		String expected= "　";

		dto.setFirstName(expected);
		String actual = dto.getFirstName();
		assertEquals(expected, actual);
	}

	@Test
	public void testGetFirstName8() {
		DestinationInfoDTO dto = new DestinationInfoDTO();
		String expected= "abc123";

		dto.setFirstName(expected);
		String actual = dto.getFirstName();
		assertEquals(expected, actual);
	}

	@Test
	public void testGetFirstName9() {
		DestinationInfoDTO dto = new DestinationInfoDTO();
		String expected= "あいう１２３";

		dto.setFirstName(expected);
		String actual = dto.getFirstName();
		assertEquals(expected, actual);
	}

	@Test
	public void testGetFirstName10() {
		DestinationInfoDTO dto = new DestinationInfoDTO();
		String expected= "abc123あいう１２３";

		dto.setFirstName(expected);
		String actual = dto.getFirstName();
		assertEquals(expected, actual);
	}

	@Test
	public void testGetFirstName11() {
		DestinationInfoDTO dto = new DestinationInfoDTO();
		String expected= "abc123あいう１２３漢字";

		dto.setFirstName(expected);
		String actual = dto.getFirstName();
		assertEquals(expected, actual);
	}

	@Test
	public void testGetFirstName12() {
		DestinationInfoDTO dto = new DestinationInfoDTO();
		String expected= "ａｂｃあいう１２３漢字";

		dto.setFirstName(expected);
		String actual = dto.getFirstName();
		assertEquals(expected, actual);
	}

	//set First Name test
	@Test
	public void testSetFirstName1() {
		DestinationInfoDTO dto = new DestinationInfoDTO();
		String expected="0";

		dto.setFirstName(expected);
		String actual = dto.getFirstName();
		assertEquals(expected, actual);
	}

	@Test
	public void testSetFirstName2() {
		DestinationInfoDTO dto = new DestinationInfoDTO();
		String expected="2147483647";

		dto.setFirstName(expected);
		String actual = dto.getFirstName();
		assertEquals(expected, actual);
	}

	@Test
	public void testSetFirstName3() {
		DestinationInfoDTO dto = new DestinationInfoDTO();
		String expected="-2147483647";

		dto.setFirstName(expected);
		String actual = dto.getFirstName();
		assertEquals(expected, actual);
	}

	@Test
	public void testSetFirstName4() {
		DestinationInfoDTO dto = new DestinationInfoDTO();
		String expected="null";

		dto.setFirstName(expected);
		String actual = dto.getFirstName();
		assertEquals(expected, actual);
	}

	@Test
	public void testSetFirstName5() {
		DestinationInfoDTO dto = new DestinationInfoDTO();
		String expected="";

		dto.setFirstName(expected);
		String actual = dto.getFirstName();
		assertEquals(expected, actual);
	}

	@Test
	public void testSetFirstName6() {
		DestinationInfoDTO dto = new DestinationInfoDTO();
		String expected= " ";

		dto.setFirstName(expected);
		String actual = dto.getFirstName();
		assertEquals(expected, actual);
	}

	@Test
	public void testSetFirstName7() {
		DestinationInfoDTO dto = new DestinationInfoDTO();
		String expected= "　";

		dto.setFirstName(expected);
		String actual = dto.getFirstName();
		assertEquals(expected, actual);
	}

	@Test
	public void testSetFirstName8() {
		DestinationInfoDTO dto = new DestinationInfoDTO();
		String expected= "abc123";

		dto.setFirstName(expected);
		String actual = dto.getFirstName();
		assertEquals(expected, actual);
	}

	@Test
	public void testSetFirstName9() {
		DestinationInfoDTO dto = new DestinationInfoDTO();
		String expected= "あいう１２３";

		dto.setFirstName(expected);
		String actual = dto.getFirstName();
		assertEquals(expected, actual);
	}

	@Test
	public void testSetFirstName10() {
		DestinationInfoDTO dto = new DestinationInfoDTO();
		String expected= "abc123あいう１２３";

		dto.setFirstName(expected);
		String actual = dto.getFirstName();
		assertEquals(expected, actual);
	}

	@Test
	public void testSetFirstName11() {
		DestinationInfoDTO dto = new DestinationInfoDTO();
		String expected= "abc123あいう１２３漢字";

		dto.setFirstName(expected);
		String actual = dto.getFirstName();
		assertEquals(expected, actual);
	}
	@Test
	public void testSetFirstName12() {
		DestinationInfoDTO dto = new DestinationInfoDTO();
		String expected= "ａｂｃあいう１２３漢字";

		dto.setFirstName(expected);
		String actual = dto.getFirstName();
		assertEquals(expected, actual);
	}

	// get FamilyNameKana test
	@Test
	public void testGetFamilyNameKana1() {
		DestinationInfoDTO dto = new DestinationInfoDTO();
		String expected="0";

		dto.setFamilyNameKana(expected);
		String actual = dto.getFamilyNameKana();
		assertEquals(expected, actual);
	}

	@Test
	public void testGetFamilyNameKana2() {
		DestinationInfoDTO dto = new DestinationInfoDTO();
		String expected="2147483647";

		dto.setFamilyNameKana(expected);
		String actual = dto.getFamilyNameKana();
		assertEquals(expected, actual);
	}

	@Test
	public void testGetFamilyNameKana3() {
		DestinationInfoDTO dto = new DestinationInfoDTO();
		String expected="-2147483647";

		dto.setFamilyNameKana(expected);
		String actual = dto.getFamilyNameKana();
		assertEquals(expected, actual);
	}

	@Test
	public void testGetFamilyNameKana4() {
		DestinationInfoDTO dto = new DestinationInfoDTO();
		String expected="null";

		dto.setFamilyNameKana(expected);
		String actual = dto.getFamilyNameKana();
		assertEquals(expected, actual);
	}

	@Test
	public void testGetFamilyNameKana5() {
		DestinationInfoDTO dto = new DestinationInfoDTO();
		String expected="";

		dto.setFamilyNameKana(expected);
		String actual = dto.getFamilyNameKana();
		assertEquals(expected, actual);
	}

	@Test
	public void testGetFamilyNameKana6() {
		DestinationInfoDTO dto = new DestinationInfoDTO();
		String expected=" ";

		dto.setFamilyNameKana(expected);
		String actual = dto.getFamilyNameKana();
		assertEquals(expected, actual);
	}

	@Test
	public void testGetFamilyNameKana7() {
		DestinationInfoDTO dto = new DestinationInfoDTO();
		String expected="　";

		dto.setFamilyNameKana(expected);
		String actual = dto.getFamilyNameKana();
		assertEquals(expected, actual);
	}

	@Test
	public void testGetFamilyNameKana8() {
		DestinationInfoDTO dto = new DestinationInfoDTO();
		String expected="abc123";

		dto.setFamilyNameKana(expected);
		String actual = dto.getFamilyNameKana();
		assertEquals(expected, actual);
	}

	@Test
	public void testGetFamilyNameKana9() {
		DestinationInfoDTO dto = new DestinationInfoDTO();
		String expected="あいう１２３";

		dto.setFamilyNameKana(expected);
		String actual = dto.getFamilyNameKana();
		assertEquals(expected, actual);
	}

	@Test
	public void testGetFamilyNameKana10() {
		DestinationInfoDTO dto = new DestinationInfoDTO();
		String expected="abc123あいう１２３";

		dto.setFamilyNameKana(expected);
		String actual = dto.getFamilyNameKana();
		assertEquals(expected, actual);
	}

	@Test
	public void testGetFamilyNameKana11() {
		DestinationInfoDTO dto = new DestinationInfoDTO();
		String expected="abc123あいう１２３漢字";

		dto.setFamilyNameKana(expected);
		String actual = dto.getFamilyNameKana();
		assertEquals(expected, actual);
	}

	@Test
	public void testGetFamilyNameKana12() {
		DestinationInfoDTO dto = new DestinationInfoDTO();
		String expected="ａｂｃあいう１２３漢字";

		dto.setFamilyNameKana(expected);
		String actual = dto.getFamilyNameKana();
		assertEquals(expected, actual);
	}



}
