#  NOTE NOTE NOTE NOTE NOTE NOTE NOTE NOTE NOTE NOTE NOTE NOTE NOTE NOTE NOTE NOTE
#  This is an automatically generated file by gyley on Wed Jul  2 15:20:00 PDT 2025
# 
#  cmd:    veer -target=default -set=ret_stack_size=8 -set=btb_enable=1 -set=btb_fullya=0 -set=btb_size=512 -set=bht_size=512 -set=div_bit=4 -set=div_new=1 -set=dccm_enable=1 -set=dccm_num_banks=4 -set=dccm_region=0x5 -set=dccm_offset=0x00000 -set=dccm_size=256 -set=dma_buf_depth=5 -set=fast_interrupt_redirect=1 -set=icache_enable=1 -set=icache_waypack=1 -set=icache_ecc=1 -set=icache_size=32 -set=icache_2banks=1 -set=icache_num_ways=2 -set=icache_bypass_enable=1 -set=icache_num_bypass=2 -set=icache_num_tag_bypass=2 -set=icache_tag_bypass_enable=1 -set=iccm_enable=0 -set=iccm_num_banks=4 -set=iccm_region=0x4 -set=iccm_offset=0x0 -set=iccm_size=128 -set=lsu_stbuf_depth=4 -set=lsu_num_nbload=4 -set=load_to_use_plus1=0 -set=pic_2cycle=0 -set=pic_region=0x6 -set=pic_offset=0 -set=pic_size=32 -set=pic_total_int=255 -set=timer_legal_en=1 -set=bitmanip_zba=1 -set=bitmanip_zbb=1 -set=bitmanip_zbc=1 -set=bitmanip_zbe=0 -set=bitmanip_zbf=0 -set=bitmanip_zbp=0 -set=bitmanip_zbr=0 -set=bitmanip_zbs=1 -set=user_mode=1 -set=pmp_entries=64 -set=smepmp=1 -set=reset_vec=0x80000000 -fpga_optimize=0 -snapshot=css_mcu 
# 
# To use this in a perf script, use 'require $RV_ROOT/configs/config.pl'
# Reference the hash via $config{name}..


%config = (
            'iccm' => {
                        'iccm_size_128' => '',
                        'iccm_size' => 128,
                        'iccm_bank_bits' => 2,
                        'iccm_offset' => '0x0',
                        'iccm_data_cell' => 'ram_8192x39',
                        'iccm_region' => '0x4',
                        'iccm_num_banks_4' => '',
                        'iccm_bank_index_lo' => 4,
                        'iccm_eadr' => '0x4001ffff',
                        'iccm_bank_hi' => 3,
                        'iccm_sadr' => '0x40000000',
                        'iccm_reserved' => '0x1000',
                        'iccm_index_bits' => 13,
                        'iccm_rows' => '8192',
                        'iccm_ecc_width' => '7',
                        'iccm_num_banks' => '4',
                        'iccm_bits' => 17
                      },
            'memmap' => {
                          'debug_sb_mem' => '0xc0580000',
                          'unused_region0' => '0xb0000000',
                          'external_data_1' => '0xd0000000',
                          'unused_region3' => '0x70000000',
                          'unused_region6' => '0x10000000',
                          'external_data' => '0xe0580000',
                          'unused_region1' => '0xa0000000',
                          'consoleio' => '0xf0580000',
                          'unused_region4' => '0x30000000',
                          'unused_region7' => '0x00000000',
                          'unused_region2' => '0x90000000',
                          'unused_region5' => '0x20000000',
                          'serialio' => '0xf0580000'
                        },
            'regwidth' => '32',
            'triggers' => [
                            {
                              'reset' => [
                                           '0x23e00000',
                                           '0x00000000',
                                           '0x00000000'
                                         ],
                              'mask' => [
                                          '0x081818c7',
                                          '0xffffffff',
                                          '0x00000000'
                                        ],
                              'poke_mask' => [
                                               '0x081818c7',
                                               '0xffffffff',
                                               '0x00000000'
                                             ]
                            },
                            {
                              'poke_mask' => [
                                               '0x081810c7',
                                               '0xffffffff',
                                               '0x00000000'
                                             ],
                              'reset' => [
                                           '0x23e00000',
                                           '0x00000000',
                                           '0x00000000'
                                         ],
                              'mask' => [
                                          '0x081810c7',
                                          '0xffffffff',
                                          '0x00000000'
                                        ]
                            },
                            {
                              'poke_mask' => [
                                               '0x081818c7',
                                               '0xffffffff',
                                               '0x00000000'
                                             ],
                              'mask' => [
                                          '0x081818c7',
                                          '0xffffffff',
                                          '0x00000000'
                                        ],
                              'reset' => [
                                           '0x23e00000',
                                           '0x00000000',
                                           '0x00000000'
                                         ]
                            },
                            {
                              'reset' => [
                                           '0x23e00000',
                                           '0x00000000',
                                           '0x00000000'
                                         ],
                              'mask' => [
                                          '0x081810c7',
                                          '0xffffffff',
                                          '0x00000000'
                                        ],
                              'poke_mask' => [
                                               '0x081810c7',
                                               '0xffffffff',
                                               '0x00000000'
                                             ]
                            }
                          ],
            'icache' => {
                          'icache_ecc' => '1',
                          'icache_tag_num_bypass' => '2',
                          'icache_tag_cell' => 'ram_256x25',
                          'icache_num_bypass_width' => 2,
                          'icache_bank_lo' => 3,
                          'icache_status_bits' => 1,
                          'icache_num_bypass' => '2',
                          'icache_data_width' => 64,
                          'icache_2banks' => '1',
                          'icache_beat_addr_hi' => 5,
                          'icache_num_beats' => 8,
                          'icache_fdata_width' => 71,
                          'icache_data_index_lo' => 4,
                          'icache_num_lines' => 512,
                          'icache_tag_num_bypass_width' => 2,
                          'icache_ln_sz' => 64,
                          'icache_tag_depth' => 256,
                          'icache_bank_width' => 8,
                          'icache_size' => 32,
                          'icache_tag_lo' => 14,
                          'icache_num_lines_way' => '256',
                          'icache_tag_bypass_enable' => '1',
                          'icache_bank_bits' => 1,
                          'icache_bypass_enable' => '1',
                          'icache_beat_bits' => 3,
                          'icache_enable' => 1,
                          'icache_data_depth' => '1024',
                          'icache_bank_hi' => 3,
                          'icache_num_ways' => 2,
                          'icache_scnd_last' => 6,
                          'icache_index_hi' => 13,
                          'icache_waypack' => '1',
                          'icache_num_lines_bank' => '128',
                          'icache_banks_way' => 2,
                          'icache_data_cell' => 'ram_1024x71',
                          'icache_tag_index_lo' => '6'
                        },
            'dccm' => {
                        'dccm_size' => 256,
                        'dccm_bank_bits' => 2,
                        'dccm_region' => '0x5',
                        'dccm_num_banks_4' => '',
                        'dccm_offset' => '0x00000',
                        'dccm_data_cell' => 'ram_16384x39',
                        'dccm_sadr' => '0x50000000',
                        'dccm_width_bits' => 2,
                        'dccm_index_bits' => 14,
                        'dccm_rows' => '16384',
                        'dccm_reserved' => '0x1400',
                        'lsu_sb_bits' => 18,
                        'dccm_enable' => '1',
                        'dccm_eadr' => '0x5003ffff',
                        'dccm_fdata_width' => 39,
                        'dccm_size_256' => '',
                        'dccm_num_banks' => '4',
                        'dccm_byte_width' => '4',
                        'dccm_bits' => 18,
                        'dccm_data_width' => 32,
                        'dccm_ecc_width' => 7
                      },
            'tec_rv_icg' => 'clockhdr',
            'target' => 'default',
            'btb' => {
                       'btb_btag_fold' => 0,
                       'btb_addr_lo' => '2',
                       'btb_index2_hi' => 17,
                       'btb_index3_hi' => 25,
                       'btb_addr_hi' => 9,
                       'btb_index1_lo' => '2',
                       'btb_size' => 512,
                       'btb_index1_hi' => 9,
                       'btb_fold2_index_hash' => 0,
                       'btb_index2_lo' => 10,
                       'btb_index3_lo' => 18,
                       'btb_array_depth' => 256,
                       'btb_toffset_size' => '12',
                       'btb_btag_size' => 5,
                       'btb_enable' => '1'
                     },
            'physical' => '1',
            'csr' => {
                       'micect' => {
                                     'exists' => 'true',
                                     'reset' => '0x0',
                                     'mask' => '0xffffffff',
                                     'number' => '0x7f0'
                                   },
                       'mfdhs' => {
                                    'comment' => 'Force Debug Halt Status',
                                    'exists' => 'true',
                                    'reset' => '0x0',
                                    'mask' => '0x00000003',
                                    'number' => '0x7cf'
                                  },
                       'mpmc' => {
                                   'exists' => 'true',
                                   'number' => '0x7c6',
                                   'mask' => '0x2',
                                   'reset' => '0x2'
                                 },
                       'meipt' => {
                                    'comment' => 'External interrupt priority threshold.',
                                    'exists' => 'true',
                                    'mask' => '0xf',
                                    'number' => '0xbc9',
                                    'reset' => '0x0'
                                  },
                       'instret' => {
                                      'exists' => 'false'
                                    },
                       'miccmect' => {
                                       'exists' => 'true',
                                       'reset' => '0x0',
                                       'number' => '0x7f1',
                                       'mask' => '0xffffffff'
                                     },
                       'mcounteren' => {
                                         'exists' => 'false'
                                       },
                       'misa' => {
                                   'exists' => 'true',
                                   'reset' => '0x40001104',
                                   'mask' => '0x0'
                                 },
                       'dicago' => {
                                     'debug' => 'true',
                                     'mask' => '0x0',
                                     'comment' => 'Cache diagnostics.',
                                     'exists' => 'true',
                                     'reset' => '0x0',
                                     'number' => '0x7cb'
                                   },
                       'mstatus' => {
                                      'exists' => 'true',
                                      'mask' => '0x88',
                                      'reset' => '0x1800'
                                    },
                       'mfdht' => {
                                    'comment' => 'Force Debug Halt Threshold',
                                    'exists' => 'true',
                                    'shared' => 'true',
                                    'reset' => '0x0',
                                    'mask' => '0x0000003f',
                                    'number' => '0x7ce'
                                  },
                       'mhpmcounter6h' => {
                                            'exists' => 'true',
                                            'reset' => '0x0',
                                            'mask' => '0xffffffff'
                                          },
                       'mhpmcounter6' => {
                                           'reset' => '0x0',
                                           'mask' => '0xffffffff',
                                           'exists' => 'true'
                                         },
                       'mhpmevent5' => {
                                         'reset' => '0x0',
                                         'mask' => '0xffffffff',
                                         'exists' => 'true'
                                       },
                       'mhartid' => {
                                      'exists' => 'true',
                                      'reset' => '0x0',
                                      'mask' => '0x0',
                                      'poke_mask' => '0xfffffff0'
                                    },
                       'dicad1' => {
                                     'mask' => '0x3',
                                     'debug' => 'true',
                                     'comment' => 'Cache diagnostics.',
                                     'number' => '0x7ca',
                                     'reset' => '0x0',
                                     'exists' => 'true'
                                   },
                       'mdccmect' => {
                                       'reset' => '0x0',
                                       'number' => '0x7f2',
                                       'mask' => '0xffffffff',
                                       'exists' => 'true'
                                     },
                       'mscause' => {
                                      'number' => '0x7ff',
                                      'mask' => '0x0000000f',
                                      'reset' => '0x0',
                                      'exists' => 'true'
                                    },
                       'mhpmcounter4h' => {
                                            'exists' => 'true',
                                            'reset' => '0x0',
                                            'mask' => '0xffffffff'
                                          },
                       'dicawics' => {
                                       'mask' => '0x0130fffc',
                                       'debug' => 'true',
                                       'comment' => 'Cache diagnostics.',
                                       'exists' => 'true',
                                       'number' => '0x7c8',
                                       'reset' => '0x0'
                                     },
                       'mhpmcounter4' => {
                                           'mask' => '0xffffffff',
                                           'reset' => '0x0',
                                           'exists' => 'true'
                                         },
                       'mhpmcounter3' => {
                                           'exists' => 'true',
                                           'mask' => '0xffffffff',
                                           'reset' => '0x0'
                                         },
                       'meicidpl' => {
                                       'comment' => 'External interrupt claim id priority level.',
                                       'mask' => '0xf',
                                       'number' => '0xbcb',
                                       'reset' => '0x0',
                                       'exists' => 'true'
                                     },
                       'mhpmcounter3h' => {
                                            'exists' => 'true',
                                            'reset' => '0x0',
                                            'mask' => '0xffffffff'
                                          },
                       'mhpmevent6' => {
                                         'reset' => '0x0',
                                         'mask' => '0xffffffff',
                                         'exists' => 'true'
                                       },
                       'mcpc' => {
                                   'mask' => '0x0',
                                   'number' => '0x7c2',
                                   'reset' => '0x0',
                                   'exists' => 'true',
                                   'comment' => 'Core pause'
                                 },
                       'mie' => {
                                  'reset' => '0x0',
                                  'mask' => '0x70000888',
                                  'exists' => 'true'
                                },
                       'mitbnd0' => {
                                      'exists' => 'true',
                                      'mask' => '0xffffffff',
                                      'number' => '0x7d3',
                                      'reset' => '0xffffffff'
                                    },
                       'mitctl1' => {
                                      'exists' => 'true',
                                      'number' => '0x7d7',
                                      'mask' => '0x0000000f',
                                      'reset' => '0x1'
                                    },
                       'mhpmevent4' => {
                                         'exists' => 'true',
                                         'mask' => '0xffffffff',
                                         'reset' => '0x0'
                                       },
                       'mfdc' => {
                                   'number' => '0x7f9',
                                   'mask' => '0x00071fff',
                                   'reset' => '0x00070040',
                                   'exists' => 'true'
                                 },
                       'mimpid' => {
                                     'mask' => '0x0',
                                     'reset' => '0x4',
                                     'exists' => 'true'
                                   },
                       'cycle' => {
                                    'exists' => 'false'
                                  },
                       'mitcnt0' => {
                                      'exists' => 'true',
                                      'reset' => '0x0',
                                      'mask' => '0xffffffff',
                                      'number' => '0x7d2'
                                    },
                       'dmst' => {
                                   'comment' => 'Memory synch trigger: Flush caches in debug mode.',
                                   'reset' => '0x0',
                                   'number' => '0x7c4',
                                   'exists' => 'true',
                                   'debug' => 'true',
                                   'mask' => '0x0'
                                 },
                       'dicad0' => {
                                     'debug' => 'true',
                                     'mask' => '0xffffffff',
                                     'comment' => 'Cache diagnostics.',
                                     'exists' => 'true',
                                     'reset' => '0x0',
                                     'number' => '0x7c9'
                                   },
                       'mitctl0' => {
                                      'exists' => 'true',
                                      'mask' => '0x00000007',
                                      'number' => '0x7d4',
                                      'reset' => '0x1'
                                    },
                       'mcountinhibit' => {
                                            'exists' => 'true',
                                            'reset' => '0x0',
                                            'mask' => '0x7d',
                                            'commnet' => 'Performance counter inhibit. One bit per counter.',
                                            'poke_mask' => '0x7d'
                                          },
                       'mitbnd1' => {
                                      'exists' => 'true',
                                      'reset' => '0xffffffff',
                                      'mask' => '0xffffffff',
                                      'number' => '0x7d6'
                                    },
                       'mrac' => {
                                   'comment' => 'Memory region io and cache control.',
                                   'reset' => '0x0',
                                   'number' => '0x7c0',
                                   'mask' => '0xffffffff',
                                   'exists' => 'true',
                                   'shared' => 'true'
                                 },
                       'mip' => {
                                  'poke_mask' => '0x70000888',
                                  'exists' => 'true',
                                  'mask' => '0x0',
                                  'reset' => '0x0'
                                },
                       'mcgc' => {
                                   'poke_mask' => '0x000003ff',
                                   'exists' => 'true',
                                   'number' => '0x7f8',
                                   'mask' => '0x000003ff',
                                   'reset' => '0x200'
                                 },
                       'dcsr' => {
                                   'poke_mask' => '0x00008dcc',
                                   'exists' => 'true',
                                   'debug' => 'true',
                                   'reset' => '0x40000003',
                                   'mask' => '0x00008c04'
                                 },
                       'meicurpl' => {
                                       'comment' => 'External interrupt current priority level.',
                                       'reset' => '0x0',
                                       'mask' => '0xf',
                                       'number' => '0xbcc',
                                       'exists' => 'true'
                                     },
                       'tselect' => {
                                      'mask' => '0x3',
                                      'reset' => '0x0',
                                      'exists' => 'true'
                                    },
                       'mhpmcounter5' => {
                                           'reset' => '0x0',
                                           'mask' => '0xffffffff',
                                           'exists' => 'true'
                                         },
                       'marchid' => {
                                      'exists' => 'true',
                                      'reset' => '0x00000010',
                                      'mask' => '0x0'
                                    },
                       'mhpmcounter5h' => {
                                            'exists' => 'true',
                                            'reset' => '0x0',
                                            'mask' => '0xffffffff'
                                          },
                       'time' => {
                                   'exists' => 'false'
                                 },
                       'mhpmevent3' => {
                                         'exists' => 'true',
                                         'mask' => '0xffffffff',
                                         'reset' => '0x0'
                                       },
                       'mitcnt1' => {
                                      'exists' => 'true',
                                      'mask' => '0xffffffff',
                                      'number' => '0x7d5',
                                      'reset' => '0x0'
                                    },
                       'mvendorid' => {
                                        'exists' => 'true',
                                        'reset' => '0x45',
                                        'mask' => '0x0'
                                      }
                     },
            'config_key' => '32\'hdeadbeef',
            'core' => {
                        'no_iccm_no_icache' => 'derived',
                        'bitmanip_zba' => 1,
                        'lsu2dma' => 0,
                        'div_new' => 1,
                        'icache_only' => 1,
                        'div_bit' => '4',
                        'iccm_icache' => 'derived',
                        'bitmanip_zbc' => 1,
                        'bitmanip_zbf' => 0,
                        'bitmanip_zbs' => 1,
                        'bitmanip_zbb' => 1,
                        'user_mode' => '1',
                        'lsu_num_nbload' => '4',
                        'lsu_stbuf_depth' => '4',
                        'dma_buf_depth' => '5',
                        'bitmanip_zbr' => 0,
                        'iccm_only' => 'derived',
                        'timer_legal_en' => '1',
                        'lsu_num_nbload_width' => '2',
                        'bitmanip_zbp' => 0,
                        'fast_interrupt_redirect' => '1',
                        'bitmanip_zbe' => 0
                      },
            'nmi_vec' => '0x11110000',
            'testbench' => {
                             'build_axi_native' => 1,
                             'ext_datawidth' => '64',
                             'SDVT_AHB' => '0',
                             'clock_period' => '100',
                             'RV_TOP' => '`TOP.rvtop_wrapper.rvtop',
                             'build_axi4' => 1,
                             'lderr_rollback' => '1',
                             'sterr_rollback' => '0',
                             'CPU_TOP' => '`RV_TOP.veer',
                             'ext_addrwidth' => '32',
                             'TOP' => 'tb_top'
                           },
            'protection' => {
                              'data_access_addr7' => '0x00000000',
                              'data_access_enable6' => '0x0',
                              'inst_access_enable5' => '0x0',
                              'inst_access_addr5' => '0x00000000',
                              'data_access_mask1' => '0xffffffff',
                              'inst_access_enable1' => '0x0',
                              'data_access_addr6' => '0x00000000',
                              'data_access_enable1' => '0x0',
                              'inst_access_mask1' => '0xffffffff',
                              'inst_access_addr6' => '0x00000000',
                              'inst_access_enable6' => '0x0',
                              'inst_access_addr7' => '0x00000000',
                              'data_access_enable5' => '0x0',
                              'data_access_addr5' => '0x00000000',
                              'inst_access_addr4' => '0x00000000',
                              'inst_access_addr2' => '0x00000000',
                              'inst_access_enable0' => '0x0',
                              'inst_access_mask0' => '0xffffffff',
                              'inst_access_enable7' => '0x0',
                              'data_access_mask3' => '0xffffffff',
                              'data_access_enable0' => '0x0',
                              'data_access_mask0' => '0xffffffff',
                              'inst_access_mask3' => '0xffffffff',
                              'data_access_enable7' => '0x0',
                              'data_access_addr4' => '0x00000000',
                              'data_access_addr2' => '0x00000000',
                              'inst_access_mask5' => '0xffffffff',
                              'data_access_mask7' => '0xffffffff',
                              'data_access_mask6' => '0xffffffff',
                              'inst_access_enable2' => '0x0',
                              'data_access_addr1' => '0x00000000',
                              'pmp_entries' => '64',
                              'inst_access_mask6' => '0xffffffff',
                              'data_access_enable2' => '0x0',
                              'inst_access_addr1' => '0x00000000',
                              'smepmp' => '1',
                              'data_access_mask5' => '0xffffffff',
                              'inst_access_mask7' => '0xffffffff',
                              'inst_access_mask2' => '0xffffffff',
                              'inst_access_mask4' => '0xffffffff',
                              'data_access_enable4' => '0x0',
                              'data_access_addr3' => '0x00000000',
                              'inst_access_enable3' => '0x0',
                              'inst_access_addr0' => '0x00000000',
                              'data_access_enable3' => '0x0',
                              'inst_access_addr3' => '0x00000000',
                              'data_access_addr0' => '0x00000000',
                              'data_access_mask2' => '0xffffffff',
                              'data_access_mask4' => '0xffffffff',
                              'inst_access_enable4' => '0x0'
                            },
            'retstack' => {
                            'ret_stack_size' => '8'
                          },
            'even_odd_trigger_chains' => 'true',
            'bht' => {
                       'bht_ghr_range' => '7:0',
                       'bht_ghr_size' => 8,
                       'bht_size' => 512,
                       'bht_array_depth' => 256,
                       'bht_addr_hi' => 9,
                       'bht_addr_lo' => '2',
                       'bht_ghr_hash_1' => '',
                       'bht_hash_string' => '{hashin[8+1:2]^ghr[8-1:0]}// cf2'
                     },
            'max_mmode_perf_event' => '516',
            'num_mmode_perf_regs' => '4',
            'numiregs' => '32',
            'harts' => 1,
            'xlen' => 32,
            'reset_vec' => '0x80000000',
            'perf_events' => [
                               1,
                               2,
                               3,
                               4,
                               5,
                               6,
                               7,
                               8,
                               9,
                               10,
                               11,
                               12,
                               13,
                               14,
                               15,
                               16,
                               17,
                               18,
                               19,
                               20,
                               21,
                               22,
                               23,
                               24,
                               25,
                               26,
                               27,
                               28,
                               30,
                               31,
                               32,
                               34,
                               35,
                               36,
                               37,
                               38,
                               39,
                               40,
                               41,
                               42,
                               43,
                               44,
                               45,
                               46,
                               47,
                               48,
                               49,
                               50,
                               54,
                               55,
                               56,
                               512,
                               513,
                               514,
                               515,
                               516
                             ],
            'pic' => {
                       'pic_meipt_offset' => '0x3004',
                       'pic_meigwctrl_mask' => '0x3',
                       'pic_meip_count' => 8,
                       'pic_size' => 32,
                       'pic_meie_mask' => '0x1',
                       'pic_mpiccfg_offset' => '0x3000',
                       'pic_meipt_mask' => '0x0',
                       'pic_int_words' => 8,
                       'pic_mpiccfg_mask' => '0x1',
                       'pic_meip_offset' => '0x1000',
                       'pic_total_int' => 255,
                       'pic_region' => '0x6',
                       'pic_meipt_count' => 255,
                       'pic_total_int_plus1' => 256,
                       'pic_meipl_mask' => '0xf',
                       'pic_base_addr' => '0x60000000',
                       'pic_meigwclr_offset' => '0x5000',
                       'pic_meie_offset' => '0x2000',
                       'pic_meigwclr_count' => 255,
                       'pic_offset' => '0',
                       'pic_meip_mask' => '0x0',
                       'pic_meipl_count' => 255,
                       'pic_meigwctrl_count' => 255,
                       'pic_bits' => 15,
                       'pic_meipl_offset' => '0x0000',
                       'pic_meie_count' => 255,
                       'pic_meigwclr_mask' => '0x0',
                       'pic_mpiccfg_count' => 1,
                       'pic_meigwctrl_offset' => '0x4000'
                     },
            'bus' => {
                       'ifu_bus_tag' => '3',
                       'lsu_bus_prty' => '2',
                       'lsu_bus_id' => '1',
                       'dma_bus_tag' => '1',
                       'sb_bus_tag' => '1',
                       'ifu_bus_id' => '1',
                       'dma_bus_prty' => '2',
                       'ifu_bus_prty' => '2',
                       'dma_bus_id' => '1',
                       'sb_bus_prty' => '2',
                       'lsu_bus_tag' => 3,
                       'bus_prty_default' => '3',
                       'sb_bus_id' => '1'
                     },
            'user_ec_rv_icg' => 'user_clock_gate'
          );
1;
