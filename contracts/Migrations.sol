/**
 * SPDX-License-Identifier: GPL-3.0-or-later
 * seismics
 * Copyright (C) 2020 seismics Protocol
 */
pragma solidity >=0.7.0 <0.8.0;

contract Migrations {
  address public owner;
  uint public last_completed_migration;

  constructor()  {
    owner = msg.sender;
  }

  modifier restricted() {
    if (msg.sender == owner) _;
  }

  function setCompleted(uint completed) public restricted {
    last_completed_migration = completed;
  }
}
