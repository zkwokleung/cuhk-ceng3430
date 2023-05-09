LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
LIBRARY ieee_proposed;
USE ieee_proposed.fixed_float_types.ALL;
USE ieee_proposed.fixed_pkg.ALL;
USE ieee_proposed.float_pkg.ALL;

PACKAGE math3D_pkg IS
    -----------------------------------------------
    --               Trigonometry                --
    ----------------------------------------------- 
    TYPE t_sincos_table IS ARRAY (0 TO 359) OF float32;

    -- The lookup table for sine
    CONSTANT sin_table : t_sincos_table := (
        to_float32(0.0),
        to_float32(0.01745240643728351),
        to_float32(0.03489949670250097),
        to_float32(0.052335956242943835),
        to_float32(0.0697564737441253),
        to_float32(0.08715574274765817),
        to_float32(0.10452846326765347),
        to_float32(0.12186934340514748),
        to_float32(0.13917310096006544),
        to_float32(0.15643446504023087),
        to_float32(0.17364817766693033),
        to_float32(0.1908089953765448),
        to_float32(0.20791169081775934),
        to_float32(0.224951054343865),
        to_float32(0.24192189559966773),
        to_float32(0.25881904510252074),
        to_float32(0.27563735581699916),
        to_float32(0.29237170472273677),
        to_float32(0.3090169943749474),
        to_float32(0.3255681544571567),
        to_float32(0.3420201433256687),
        to_float32(0.35836794954530027),
        to_float32(0.374606593415912),
        to_float32(0.39073112848927377),
        to_float32(0.4067366430758002),
        to_float32(0.42261826174069944),
        to_float32(0.4383711467890774),
        to_float32(0.45399049973954675),
        to_float32(0.4694715627858908),
        to_float32(0.48480962024633706),
        to_float32(0.49999999999999994),
        to_float32(0.5150380749100542),
        to_float32(0.5299192642332049),
        to_float32(0.5446390350150271),
        to_float32(0.5591929034707469),
        to_float32(0.573576436351046),
        to_float32(0.5877852522924731),
        to_float32(0.6018150231520483),
        to_float32(0.6156614753256583),
        to_float32(0.6293203910498374),
        to_float32(0.6427876096865393),
        to_float32(0.6560590289905073),
        to_float32(0.6691306063588582),
        to_float32(0.6819983600624985),
        to_float32(0.6946583704589973),
        to_float32(0.7071067811865476),
        to_float32(0.7193398003386512),
        to_float32(0.7313537016191705),
        to_float32(0.7431448254773942),
        to_float32(0.754709580222772),
        to_float32(0.766044443118978),
        to_float32(0.7771459614569709),
        to_float32(0.788010753606722),
        to_float32(0.7986355100472928),
        to_float32(0.8090169943749475),
        to_float32(0.8191520442889918),
        to_float32(0.8290375725550417),
        to_float32(0.838670567945424),
        to_float32(0.8480480961564261),
        to_float32(0.8571673007021123),
        to_float32(0.8660254037844386),
        to_float32(0.8746197071393957),
        to_float32(0.8829475928589269),
        to_float32(0.8910065241883678),
        to_float32(0.898794046299167),
        to_float32(0.9063077870366499),
        to_float32(0.9135454576426009),
        to_float32(0.9205048534524404),
        to_float32(0.9271838545667874),
        to_float32(0.9335804264972017),
        to_float32(0.9396926207859083),
        to_float32(0.9455185755993167),
        to_float32(0.9510565162951535),
        to_float32(0.9563047559630354),
        to_float32(0.9612616959383189),
        to_float32(0.9659258262890683),
        to_float32(0.9702957262759965),
        to_float32(0.9743700647852352),
        to_float32(0.9781476007338056),
        to_float32(0.981627183447664),
        to_float32(0.984807753012208),
        to_float32(0.9876883405951378),
        to_float32(0.9902680687415704),
        to_float32(0.992546151641322),
        to_float32(0.9945218953682733),
        to_float32(0.9961946980917455),
        to_float32(0.9975640502598242),
        to_float32(0.9986295347545738),
        to_float32(0.9993908270190958),
        to_float32(0.9998476951563913),
        to_float32(1.0),
        to_float32(0.9998476951563913),
        to_float32(0.9993908270190958),
        to_float32(0.9986295347545738),
        to_float32(0.9975640502598242),
        to_float32(0.9961946980917455),
        to_float32(0.9945218953682733),
        to_float32(0.9925461516413221),
        to_float32(0.9902680687415704),
        to_float32(0.9876883405951378),
        to_float32(0.984807753012208),
        to_float32(0.981627183447664),
        to_float32(0.9781476007338057),
        to_float32(0.9743700647852352),
        to_float32(0.9702957262759965),
        to_float32(0.9659258262890683),
        to_float32(0.9612616959383189),
        to_float32(0.9563047559630355),
        to_float32(0.9510565162951536),
        to_float32(0.9455185755993168),
        to_float32(0.9396926207859084),
        to_float32(0.9335804264972017),
        to_float32(0.9271838545667874),
        to_float32(0.9205048534524403),
        to_float32(0.9135454576426009),
        to_float32(0.90630778703665),
        to_float32(0.8987940462991669),
        to_float32(0.8910065241883679),
        to_float32(0.8829475928589269),
        to_float32(0.8746197071393959),
        to_float32(0.8660254037844387),
        to_float32(0.8571673007021123),
        to_float32(0.8480480961564261),
        to_float32(0.838670567945424),
        to_float32(0.8290375725550417),
        to_float32(0.8191520442889917),
        to_float32(0.8090169943749475),
        to_float32(0.7986355100472927),
        to_float32(0.788010753606722),
        to_float32(0.777145961456971),
        to_float32(0.766044443118978),
        to_float32(0.7547095802227721),
        to_float32(0.7431448254773942),
        to_float32(0.7313537016191706),
        to_float32(0.7193398003386511),
        to_float32(0.7071067811865476),
        to_float32(0.6946583704589971),
        to_float32(0.6819983600624985),
        to_float32(0.6691306063588583),
        to_float32(0.6560590289905073),
        to_float32(0.6427876096865395),
        to_float32(0.6293203910498374),
        to_float32(0.6156614753256584),
        to_float32(0.6018150231520482),
        to_float32(0.5877852522924732),
        to_float32(0.5735764363510459),
        to_float32(0.5591929034707469),
        to_float32(0.5446390350150273),
        to_float32(0.5299192642332049),
        to_float32(0.5150380749100544),
        to_float32(0.49999999999999994),
        to_float32(0.48480962024633717),
        to_float32(0.4694715627858907),
        to_float32(0.45399049973954686),
        to_float32(0.4383711467890773),
        to_float32(0.4226182617406995),
        to_float32(0.40673664307580043),
        to_float32(0.39073112848927377),
        to_float32(0.37460659341591224),
        to_float32(0.3583679495453002),
        to_float32(0.3420201433256689),
        to_float32(0.3255681544571566),
        to_float32(0.3090169943749475),
        to_float32(0.2923717047227366),
        to_float32(0.2756373558169992),
        to_float32(0.258819045102521),
        to_float32(0.24192189559966773),
        to_float32(0.2249510543438652),
        to_float32(0.20791169081775931),
        to_float32(0.19080899537654497),
        to_float32(0.17364817766693028),
        to_float32(0.15643446504023098),
        to_float32(0.13917310096006533),
        to_float32(0.12186934340514755),
        to_float32(0.10452846326765373),
        to_float32(0.0871557427476582),
        to_float32(0.06975647374412552),
        to_float32(0.05233595624294381),
        to_float32(0.03489949670250114),
        to_float32(0.01745240643728344),
        to_float32(1.2246467991473532e-16),
        to_float32(-0.017452406437283637),
        to_float32(-0.0348994967025009),
        to_float32(-0.052335956242943564),
        to_float32(-0.06975647374412527),
        to_float32(-0.08715574274765794),
        to_float32(-0.1045284632676535),
        to_float32(-0.12186934340514731),
        to_float32(-0.13917310096006552),
        to_float32(-0.15643446504023073),
        to_float32(-0.17364817766693047),
        to_float32(-0.19080899537654472),
        to_float32(-0.2079116908177595),
        to_float32(-0.22495105434386498),
        to_float32(-0.2419218955996675),
        to_float32(-0.2588190451025208),
        to_float32(-0.275637355816999),
        to_float32(-0.29237170472273677),
        to_float32(-0.3090169943749473),
        to_float32(-0.32556815445715676),
        to_float32(-0.34202014332566866),
        to_float32(-0.35836794954530043),
        to_float32(-0.374606593415912),
        to_float32(-0.39073112848927355),
        to_float32(-0.4067366430758002),
        to_float32(-0.4226182617406993),
        to_float32(-0.43837114678907746),
        to_float32(-0.45399049973954664),
        to_float32(-0.46947156278589086),
        to_float32(-0.48480962024633695),
        to_float32(-0.5000000000000001),
        to_float32(-0.5150380749100542),
        to_float32(-0.5299192642332048),
        to_float32(-0.5446390350150271),
        to_float32(-0.5591929034707467),
        to_float32(-0.5735764363510462),
        to_float32(-0.587785252292473),
        to_float32(-0.6018150231520484),
        to_float32(-0.6156614753256582),
        to_float32(-0.6293203910498376),
        to_float32(-0.6427876096865393),
        to_float32(-0.656059028990507),
        to_float32(-0.6691306063588582),
        to_float32(-0.6819983600624984),
        to_float32(-0.6946583704589973),
        to_float32(-0.7071067811865475),
        to_float32(-0.7193398003386512),
        to_float32(-0.7313537016191705),
        to_float32(-0.7431448254773944),
        to_float32(-0.754709580222772),
        to_float32(-0.7660444431189779),
        to_float32(-0.7771459614569706),
        to_float32(-0.7880107536067221),
        to_float32(-0.7986355100472928),
        to_float32(-0.8090169943749473),
        to_float32(-0.8191520442889916),
        to_float32(-0.8290375725550418),
        to_float32(-0.8386705679454242),
        to_float32(-0.848048096156426),
        to_float32(-0.8571673007021121),
        to_float32(-0.8660254037844385),
        to_float32(-0.8746197071393959),
        to_float32(-0.882947592858927),
        to_float32(-0.8910065241883678),
        to_float32(-0.8987940462991668),
        to_float32(-0.9063077870366502),
        to_float32(-0.913545457642601),
        to_float32(-0.9205048534524403),
        to_float32(-0.9271838545667873),
        to_float32(-0.9335804264972016),
        to_float32(-0.9396926207859084),
        to_float32(-0.9455185755993168),
        to_float32(-0.9510565162951535),
        to_float32(-0.9563047559630353),
        to_float32(-0.961261695938319),
        to_float32(-0.9659258262890683),
        to_float32(-0.9702957262759965),
        to_float32(-0.9743700647852351),
        to_float32(-0.9781476007338056),
        to_float32(-0.981627183447664),
        to_float32(-0.984807753012208),
        to_float32(-0.9876883405951377),
        to_float32(-0.9902680687415703),
        to_float32(-0.9925461516413221),
        to_float32(-0.9945218953682734),
        to_float32(-0.9961946980917455),
        to_float32(-0.9975640502598242),
        to_float32(-0.9986295347545738),
        to_float32(-0.9993908270190958),
        to_float32(-0.9998476951563913),
        to_float32(-1.0),
        to_float32(-0.9998476951563913),
        to_float32(-0.9993908270190958),
        to_float32(-0.9986295347545738),
        to_float32(-0.9975640502598243),
        to_float32(-0.9961946980917455),
        to_float32(-0.9945218953682734),
        to_float32(-0.992546151641322),
        to_float32(-0.9902680687415704),
        to_float32(-0.9876883405951378),
        to_float32(-0.9848077530122081),
        to_float32(-0.9816271834476639),
        to_float32(-0.9781476007338056),
        to_float32(-0.9743700647852352),
        to_float32(-0.9702957262759966),
        to_float32(-0.9659258262890684),
        to_float32(-0.9612616959383188),
        to_float32(-0.9563047559630354),
        to_float32(-0.9510565162951536),
        to_float32(-0.945518575599317),
        to_float32(-0.9396926207859083),
        to_float32(-0.9335804264972017),
        to_float32(-0.9271838545667874),
        to_float32(-0.9205048534524405),
        to_float32(-0.9135454576426011),
        to_float32(-0.9063077870366498),
        to_float32(-0.898794046299167),
        to_float32(-0.891006524188368),
        to_float32(-0.8829475928589271),
        to_float32(-0.8746197071393956),
        to_float32(-0.8660254037844386),
        to_float32(-0.8571673007021123),
        to_float32(-0.8480480961564261),
        to_float32(-0.8386705679454243),
        to_float32(-0.8290375725550416),
        to_float32(-0.8191520442889918),
        to_float32(-0.8090169943749476),
        to_float32(-0.798635510047293),
        to_float32(-0.7880107536067218),
        to_float32(-0.7771459614569708),
        to_float32(-0.7660444431189781),
        to_float32(-0.7547095802227722),
        to_float32(-0.7431448254773946),
        to_float32(-0.7313537016191703),
        to_float32(-0.7193398003386511),
        to_float32(-0.7071067811865477),
        to_float32(-0.6946583704589976),
        to_float32(-0.6819983600624983),
        to_float32(-0.6691306063588581),
        to_float32(-0.6560590289905074),
        to_float32(-0.6427876096865396),
        to_float32(-0.6293203910498378),
        to_float32(-0.6156614753256582),
        to_float32(-0.6018150231520483),
        to_float32(-0.5877852522924734),
        to_float32(-0.5735764363510465),
        to_float32(-0.5591929034707466),
        to_float32(-0.544639035015027),
        to_float32(-0.529919264233205),
        to_float32(-0.5150380749100545),
        to_float32(-0.5000000000000004),
        to_float32(-0.4848096202463369),
        to_float32(-0.4694715627858908),
        to_float32(-0.45399049973954697),
        to_float32(-0.4383711467890778),
        to_float32(-0.4226182617406992),
        to_float32(-0.40673664307580015),
        to_float32(-0.3907311284892739),
        to_float32(-0.37460659341591235),
        to_float32(-0.35836794954530077),
        to_float32(-0.3420201433256686),
        to_float32(-0.3255681544571567),
        to_float32(-0.3090169943749477),
        to_float32(-0.29237170472273716),
        to_float32(-0.27563735581699894),
        to_float32(-0.2588190451025207),
        to_float32(-0.24192189559966787),
        to_float32(-0.22495105434386534),
        to_float32(-0.20791169081775987),
        to_float32(-0.19080899537654467),
        to_float32(-0.1736481776669304),
        to_float32(-0.1564344650402311),
        to_float32(-0.13917310096006588),
        to_float32(-0.12186934340514723),
        to_float32(-0.10452846326765342),
        to_float32(-0.08715574274765832),
        to_float32(-0.06975647374412564),
        to_float32(-0.05233595624294437),
        to_float32(-0.034899496702500823),
        to_float32(-0.01745240643728356)
    );

    -- The lookup table for cosine
    CONSTANT cos_table : t_sincos_table := (
        to_float32(1.0),
        to_float32(0.9998476951563913),
        to_float32(0.9993908270190958),
        to_float32(0.9986295347545738),
        to_float32(0.9975640502598242),
        to_float32(0.9961946980917455),
        to_float32(0.9945218953682733),
        to_float32(0.992546151641322),
        to_float32(0.9902680687415704),
        to_float32(0.9876883405951378),
        to_float32(0.984807753012208),
        to_float32(0.981627183447664),
        to_float32(0.9781476007338057),
        to_float32(0.9743700647852352),
        to_float32(0.9702957262759965),
        to_float32(0.9659258262890683),
        to_float32(0.9612616959383189),
        to_float32(0.9563047559630354),
        to_float32(0.9510565162951535),
        to_float32(0.9455185755993168),
        to_float32(0.9396926207859084),
        to_float32(0.9335804264972017),
        to_float32(0.9271838545667874),
        to_float32(0.9205048534524404),
        to_float32(0.9135454576426009),
        to_float32(0.9063077870366499),
        to_float32(0.898794046299167),
        to_float32(0.8910065241883679),
        to_float32(0.882947592858927),
        to_float32(0.8746197071393957),
        to_float32(0.8660254037844387),
        to_float32(0.8571673007021123),
        to_float32(0.848048096156426),
        to_float32(0.838670567945424),
        to_float32(0.8290375725550417),
        to_float32(0.8191520442889918),
        to_float32(0.8090169943749475),
        to_float32(0.7986355100472928),
        to_float32(0.7880107536067219),
        to_float32(0.7771459614569709),
        to_float32(0.766044443118978),
        to_float32(0.754709580222772),
        to_float32(0.7431448254773942),
        to_float32(0.7313537016191705),
        to_float32(0.7193398003386512),
        to_float32(0.7071067811865476),
        to_float32(0.6946583704589973),
        to_float32(0.6819983600624985),
        to_float32(0.6691306063588582),
        to_float32(0.6560590289905073),
        to_float32(0.6427876096865394),
        to_float32(0.6293203910498375),
        to_float32(0.6156614753256583),
        to_float32(0.6018150231520484),
        to_float32(0.5877852522924731),
        to_float32(0.573576436351046),
        to_float32(0.5591929034707468),
        to_float32(0.5446390350150271),
        to_float32(0.5299192642332049),
        to_float32(0.5150380749100542),
        to_float32(0.5000000000000001),
        to_float32(0.4848096202463371),
        to_float32(0.46947156278589086),
        to_float32(0.4539904997395468),
        to_float32(0.43837114678907746),
        to_float32(0.42261826174069944),
        to_float32(0.4067366430758002),
        to_float32(0.3907311284892737),
        to_float32(0.37460659341591196),
        to_float32(0.3583679495453004),
        to_float32(0.3420201433256688),
        to_float32(0.32556815445715676),
        to_float32(0.30901699437494745),
        to_float32(0.29237170472273677),
        to_float32(0.27563735581699916),
        to_float32(0.25881904510252074),
        to_float32(0.24192189559966767),
        to_float32(0.22495105434386492),
        to_float32(0.20791169081775945),
        to_float32(0.19080899537654492),
        to_float32(0.17364817766693041),
        to_float32(0.15643446504023092),
        to_float32(0.13917310096006547),
        to_float32(0.12186934340514749),
        to_float32(0.10452846326765346),
        to_float32(0.08715574274765814),
        to_float32(0.06975647374412523),
        to_float32(0.052335956242943966),
        to_float32(0.03489949670250108),
        to_float32(0.0174524064372836),
        to_float32(6.123233995736766e-17),
        to_float32(-0.017452406437283477),
        to_float32(-0.034899496702500955),
        to_float32(-0.05233595624294384),
        to_float32(-0.06975647374412533),
        to_float32(-0.08715574274765824),
        to_float32(-0.10452846326765355),
        to_float32(-0.12186934340514737),
        to_float32(-0.13917310096006535),
        to_float32(-0.1564344650402308),
        to_float32(-0.1736481776669303),
        to_float32(-0.1908089953765448),
        to_float32(-0.20791169081775934),
        to_float32(-0.22495105434386503),
        to_float32(-0.24192189559966779),
        to_float32(-0.25881904510252085),
        to_float32(-0.27563735581699905),
        to_float32(-0.29237170472273666),
        to_float32(-0.30901699437494734),
        to_float32(-0.32556815445715664),
        to_float32(-0.3420201433256687),
        to_float32(-0.35836794954530027),
        to_float32(-0.37460659341591207),
        to_float32(-0.3907311284892738),
        to_float32(-0.40673664307580026),
        to_float32(-0.42261826174069933),
        to_float32(-0.4383711467890775),
        to_float32(-0.45399049973954675),
        to_float32(-0.4694715627858909),
        to_float32(-0.484809620246337),
        to_float32(-0.4999999999999998),
        to_float32(-0.5150380749100543),
        to_float32(-0.5299192642332048),
        to_float32(-0.5446390350150271),
        to_float32(-0.5591929034707467),
        to_float32(-0.5735764363510462),
        to_float32(-0.587785252292473),
        to_float32(-0.6018150231520484),
        to_float32(-0.6156614753256583),
        to_float32(-0.6293203910498373),
        to_float32(-0.6427876096865394),
        to_float32(-0.6560590289905072),
        to_float32(-0.6691306063588582),
        to_float32(-0.6819983600624984),
        to_float32(-0.6946583704589974),
        to_float32(-0.7071067811865475),
        to_float32(-0.7193398003386513),
        to_float32(-0.7313537016191705),
        to_float32(-0.7431448254773941),
        to_float32(-0.754709580222772),
        to_float32(-0.7660444431189779),
        to_float32(-0.7771459614569709),
        to_float32(-0.7880107536067219),
        to_float32(-0.7986355100472929),
        to_float32(-0.8090169943749473),
        to_float32(-0.8191520442889919),
        to_float32(-0.8290375725550416),
        to_float32(-0.8386705679454239),
        to_float32(-0.848048096156426),
        to_float32(-0.8571673007021122),
        to_float32(-0.8660254037844387),
        to_float32(-0.8746197071393957),
        to_float32(-0.882947592858927),
        to_float32(-0.8910065241883678),
        to_float32(-0.898794046299167),
        to_float32(-0.9063077870366499),
        to_float32(-0.9135454576426008),
        to_float32(-0.9205048534524404),
        to_float32(-0.9271838545667873),
        to_float32(-0.9335804264972017),
        to_float32(-0.9396926207859083),
        to_float32(-0.9455185755993168),
        to_float32(-0.9510565162951535),
        to_float32(-0.9563047559630355),
        to_float32(-0.9612616959383189),
        to_float32(-0.9659258262890682),
        to_float32(-0.9702957262759965),
        to_float32(-0.9743700647852351),
        to_float32(-0.9781476007338057),
        to_float32(-0.981627183447664),
        to_float32(-0.984807753012208),
        to_float32(-0.9876883405951377),
        to_float32(-0.9902680687415704),
        to_float32(-0.992546151641322),
        to_float32(-0.9945218953682733),
        to_float32(-0.9961946980917455),
        to_float32(-0.9975640502598242),
        to_float32(-0.9986295347545738),
        to_float32(-0.9993908270190958),
        to_float32(-0.9998476951563913),
        to_float32(-1.0),
        to_float32(-0.9998476951563913),
        to_float32(-0.9993908270190958),
        to_float32(-0.9986295347545738),
        to_float32(-0.9975640502598242),
        to_float32(-0.9961946980917455),
        to_float32(-0.9945218953682733),
        to_float32(-0.9925461516413221),
        to_float32(-0.9902680687415703),
        to_float32(-0.9876883405951378),
        to_float32(-0.984807753012208),
        to_float32(-0.981627183447664),
        to_float32(-0.9781476007338056),
        to_float32(-0.9743700647852352),
        to_float32(-0.9702957262759965),
        to_float32(-0.9659258262890683),
        to_float32(-0.9612616959383189),
        to_float32(-0.9563047559630354),
        to_float32(-0.9510565162951536),
        to_float32(-0.9455185755993167),
        to_float32(-0.9396926207859084),
        to_float32(-0.9335804264972017),
        to_float32(-0.9271838545667874),
        to_float32(-0.9205048534524404),
        to_float32(-0.9135454576426009),
        to_float32(-0.90630778703665),
        to_float32(-0.8987940462991669),
        to_float32(-0.8910065241883679),
        to_float32(-0.8829475928589269),
        to_float32(-0.8746197071393959),
        to_float32(-0.8660254037844386),
        to_float32(-0.8571673007021123),
        to_float32(-0.8480480961564261),
        to_float32(-0.838670567945424),
        to_float32(-0.8290375725550417),
        to_float32(-0.8191520442889918),
        to_float32(-0.8090169943749475),
        to_float32(-0.7986355100472928),
        to_float32(-0.788010753606722),
        to_float32(-0.7771459614569708),
        to_float32(-0.766044443118978),
        to_float32(-0.7547095802227721),
        to_float32(-0.7431448254773942),
        to_float32(-0.7313537016191706),
        to_float32(-0.7193398003386511),
        to_float32(-0.7071067811865477),
        to_float32(-0.6946583704589973),
        to_float32(-0.6819983600624986),
        to_float32(-0.6691306063588581),
        to_float32(-0.6560590289905073),
        to_float32(-0.6427876096865395),
        to_float32(-0.6293203910498378),
        to_float32(-0.6156614753256581),
        to_float32(-0.6018150231520483),
        to_float32(-0.5877852522924732),
        to_float32(-0.5735764363510464),
        to_float32(-0.5591929034707466),
        to_float32(-0.544639035015027),
        to_float32(-0.529919264233205),
        to_float32(-0.5150380749100544),
        to_float32(-0.5000000000000004),
        to_float32(-0.48480962024633684),
        to_float32(-0.46947156278589075),
        to_float32(-0.4539904997395469),
        to_float32(-0.43837114678907774),
        to_float32(-0.42261826174069916),
        to_float32(-0.4067366430758001),
        to_float32(-0.3907311284892738),
        to_float32(-0.3746065934159123),
        to_float32(-0.3583679495453007),
        to_float32(-0.34202014332566855),
        to_float32(-0.32556815445715664),
        to_float32(-0.30901699437494756),
        to_float32(-0.2923717047227371),
        to_float32(-0.2756373558169989),
        to_float32(-0.25881904510252063),
        to_float32(-0.24192189559966779),
        to_float32(-0.22495105434386525),
        to_float32(-0.2079116908177598),
        to_float32(-0.1908089953765446),
        to_float32(-0.17364817766693033),
        to_float32(-0.15643446504023104),
        to_float32(-0.13917310096006583),
        to_float32(-0.12186934340514717),
        to_float32(-0.10452846326765336),
        to_float32(-0.08715574274765825),
        to_float32(-0.06975647374412558),
        to_float32(-0.052335956242944306),
        to_float32(-0.03489949670250076),
        to_float32(-0.017452406437283498),
        to_float32(-1.8369701987210297e-16),
        to_float32(0.01745240643728313),
        to_float32(0.03489949670250128),
        to_float32(0.052335956242943946),
        to_float32(0.06975647374412522),
        to_float32(0.08715574274765789),
        to_float32(0.10452846326765299),
        to_float32(0.12186934340514768),
        to_float32(0.13917310096006547),
        to_float32(0.15643446504023067),
        to_float32(0.17364817766692997),
        to_float32(0.1908089953765451),
        to_float32(0.20791169081775943),
        to_float32(0.22495105434386492),
        to_float32(0.24192189559966742),
        to_float32(0.2588190451025203),
        to_float32(0.2756373558169994),
        to_float32(0.2923717047227367),
        to_float32(0.30901699437494723),
        to_float32(0.3255681544571563),
        to_float32(0.342020143325669),
        to_float32(0.3583679495453004),
        to_float32(0.37460659341591196),
        to_float32(0.3907311284892735),
        to_float32(0.40673664307579976),
        to_float32(0.4226182617406996),
        to_float32(0.4383711467890774),
        to_float32(0.45399049973954664),
        to_float32(0.4694715627858904),
        to_float32(0.4848096202463373),
        to_float32(0.5000000000000001),
        to_float32(0.5150380749100542),
        to_float32(0.5299192642332047),
        to_float32(0.5446390350150266),
        to_float32(0.559192903470747),
        to_float32(0.573576436351046),
        to_float32(0.5877852522924729),
        to_float32(0.6018150231520479),
        to_float32(0.6156614753256585),
        to_float32(0.6293203910498375),
        to_float32(0.6427876096865393),
        to_float32(0.656059028990507),
        to_float32(0.6691306063588578),
        to_float32(0.6819983600624986),
        to_float32(0.6946583704589973),
        to_float32(0.7071067811865474),
        to_float32(0.7193398003386509),
        to_float32(0.7313537016191707),
        to_float32(0.7431448254773942),
        to_float32(0.7547095802227719),
        to_float32(0.7660444431189778),
        to_float32(0.7771459614569706),
        to_float32(0.788010753606722),
        to_float32(0.7986355100472928),
        to_float32(0.8090169943749473),
        to_float32(0.8191520442889916),
        to_float32(0.8290375725550418),
        to_float32(0.838670567945424),
        to_float32(0.8480480961564258),
        to_float32(0.8571673007021121),
        to_float32(0.8660254037844384),
        to_float32(0.8746197071393959),
        to_float32(0.882947592858927),
        to_float32(0.8910065241883678),
        to_float32(0.8987940462991668),
        to_float32(0.90630778703665),
        to_float32(0.913545457642601),
        to_float32(0.9205048534524403),
        to_float32(0.9271838545667873),
        to_float32(0.9335804264972015),
        to_float32(0.9396926207859084),
        to_float32(0.9455185755993168),
        to_float32(0.9510565162951535),
        to_float32(0.9563047559630353),
        to_float32(0.9612616959383189),
        to_float32(0.9659258262890683),
        to_float32(0.9702957262759965),
        to_float32(0.9743700647852351),
        to_float32(0.9781476007338056),
        to_float32(0.981627183447664),
        to_float32(0.984807753012208),
        to_float32(0.9876883405951377),
        to_float32(0.9902680687415703),
        to_float32(0.9925461516413221),
        to_float32(0.9945218953682733),
        to_float32(0.9961946980917455),
        to_float32(0.9975640502598242),
        to_float32(0.9986295347545738),
        to_float32(0.9993908270190958),
        to_float32(0.9998476951563913)
    );

    -- The function of sin that returns a float32
    -- It will also normalize the input to [0, 359]
    FUNCTION sin_float32 (x : INTEGER) RETURN float32;

    -- The function of cos that returns a float32
    -- It will also normalize the input to [0, 359]
    FUNCTION cos_float32 (x : INTEGER) RETURN float32;

    -----------------------------------------------
    --            Vector and Matrix              --
    -----------------------------------------------
    TYPE vec2_int IS ARRAY (0 TO 1) OF INTEGER;
    TYPE vec3_int IS ARRAY (0 TO 2) OF INTEGER;
    TYPE vec4_int IS ARRAY (0 TO 3) OF INTEGER;

    TYPE vec2_float IS ARRAY (0 TO 1) OF float32;
    TYPE vec3_float IS ARRAY (0 TO 2) OF float32;
    TYPE vec4_float IS ARRAY (0 TO 3) OF float32;

    TYPE mat3_int IS ARRAY (0 TO 2) OF vec3_int;
    TYPE mat4_int IS ARRAY (0 TO 3) OF vec4_int;

    TYPE mat3_float IS ARRAY (0 TO 2) OF vec3_float;
    TYPE mat4_float IS ARRAY (0 TO 3) OF vec4_float;

    -- Vector2 Addition
    FUNCTION "+" (a, b : vec2_int) RETURN vec2_int;
    -- Vector2 Subtraction
    FUNCTION "-" (a, b : vec2_int) RETURN vec2_int;
    -- Vector2 Dot Product
    FUNCTION "*" (a, b : vec2_int) RETURN INTEGER;

    -- Vector3 Addition
    FUNCTION "+" (a, b : vec3_int) RETURN vec3_int;
    -- Vector3 Subtraction
    FUNCTION "-" (a, b : vec3_int) RETURN vec3_int;
    -- Vector3 Dot Product
    FUNCTION "*" (a, b : vec3_int) RETURN INTEGER;

    -- Vector4 Addition
    FUNCTION "+" (a, b : vec4_int) RETURN vec4_int;
    -- Vector4 Subtraction
    FUNCTION "-" (a, b : vec4_int) RETURN vec4_int;
    -- Vector4 Dot Product
    FUNCTION "*" (a, b : vec4_int) RETURN INTEGER;

    -- Matrix3 Addition
    FUNCTION "+" (a, b : mat3_int) RETURN mat3_int;
    -- Matrix3 Subtraction
    FUNCTION "-" (a, b : mat3_int) RETURN mat3_int;
    -- Matrix3 Multiplication
    FUNCTION "*" (a, b : mat3_int) RETURN mat3_int;
    -- Matrix3 Vector3 Multiplication
    FUNCTION "*" (a : mat3_int; b : vec3_int) RETURN vec3_int;

    -- Matrix4 Addition
    FUNCTION "+" (a, b : mat4_int) RETURN mat4_int;
    -- Matrix4 Subtraction
    FUNCTION "-" (a, b : mat4_int) RETURN mat4_int;
    -- Matrix4 Multiplication
    FUNCTION "*" (a, b : mat4_int) RETURN mat4_int;
    -- Matrix4 Vector4 Multiplication
    FUNCTION "*" (a : mat4_int; b : vec4_int) RETURN vec4_int;

    -- Vector2 Addition
    FUNCTION "+" (a, b : vec2_float) RETURN vec2_float;
    -- Vector2 Subtraction
    FUNCTION "-" (a, b : vec2_float) RETURN vec2_float;
    -- Vector2 Dot Product
    FUNCTION "*" (a, b : vec2_float) RETURN float32;

    -- Vector3 Addition
    FUNCTION "+" (a, b : vec3_float) RETURN vec3_float;
    -- Vector3 Subtraction
    FUNCTION "-" (a, b : vec3_float) RETURN vec3_float;
    -- Vector3 Dot Product
    FUNCTION "*" (a, b : vec3_float) RETURN float32;

    -- Vector4 Addition
    FUNCTION "+" (a, b : vec4_float) RETURN vec4_float;
    -- Vector4 Subtraction
    FUNCTION "-" (a, b : vec4_float) RETURN vec4_float;
    -- Vector4 Dot Product
    FUNCTION "*" (a, b : vec4_float) RETURN float32;

    -- Matrix3 Addition
    FUNCTION "+" (a, b : mat3_float) RETURN mat3_float;
    -- Matrix3 Subtraction
    FUNCTION "-" (a, b : mat3_float) RETURN mat3_float;
    -- Matrix3 Multiplication
    FUNCTION "*" (a, b : mat3_float) RETURN mat3_float;
    -- Matrix3 Vector3 Multiplication
    FUNCTION "*" (a : mat3_float; b : vec3_float) RETURN vec3_float;

    -- Matrix4 Addition
    FUNCTION "+" (a, b : mat4_float) RETURN mat4_float;
    -- Matrix4 Subtraction
    FUNCTION "-" (a, b : mat4_float) RETURN mat4_float;
    -- Matrix4 Multiplication
    FUNCTION "*" (a, b : mat4_float) RETURN mat4_float;
    -- Matrix4 Vector4 Multiplication
    FUNCTION "*" (a : mat4_float; b : vec4_float) RETURN vec4_float;

    -----------------------------------------------
    --               Projection                  --
    -----------------------------------------------
    -- Perspective Projection
    FUNCTION perspective (left, right, bottom, top, near, far : INTEGER) RETURN mat4_float;
    -- Orthographic Projection
    FUNCTION orthographic (left, right, bottom, top, near, far : INTEGER) RETURN mat4_float;
END PACKAGE;

PACKAGE BODY math3D_pkg IS
    -----------------------------------------------
    --            Trigonometric Func             --
    -----------------------------------------------
    FUNCTION sin_float32 (x : INTEGER) RETURN float32 IS
    BEGIN
        RETURN sin_float32_table(x MOD 360);
    END sin_float32;

    FUNCTION cos_float32 (x : INTEGER) RETURN float32 IS
    BEGIN
        RETURN cos_float32_table(x MOD 360);
    END cos_float32;

    -----------------------------------------------
    --            Vector and Matrix              --
    -----------------------------------------------

    -- Vector2 Addition
    FUNCTION "+" (a, b : vec2_int) RETURN vec2_int IS
        VARIABLE result : vec2_int;
    BEGIN
        result(0) := a(0) + b(0);
        result(1) := a(1) + b(1);
        RETURN result;
    END FUNCTION;

    -- Vector2 Subtraction
    FUNCTION "-" (a, b : vec2_int) RETURN vec2_int IS
        VARIABLE result : vec2_int;
    BEGIN
        result(0) := a(0) - b(0);
        result(1) := a(1) - b(1);
        RETURN result;
    END FUNCTION;

    -- Vector2 Dot Product
    FUNCTION "*" (a, b : vec2_int) RETURN INTEGER IS
        VARIABLE result : INTEGER;
    BEGIN
        result := a(0) * b(0) + a(1) * b(1);
        RETURN result;
    END FUNCTION;

    -- Vector3 Addition
    FUNCTION "+" (a, b : vec3_int) RETURN vec3_int IS
        VARIABLE result : vec3_int;
    BEGIN
        result(0) := a(0) + b(0);
        result(1) := a(1) + b(1);
        result(2) := a(2) + b(2);
        RETURN result;
    END FUNCTION;

    -- Vector3 Subtraction
    FUNCTION "-" (a, b : vec3_int) RETURN vec3_int IS
        VARIABLE result : vec3_int;
    BEGIN
        result(0) := a(0) - b(0);
        result(1) := a(1) - b(1);
        result(2) := a(2) - b(2);
        RETURN result;
    END FUNCTION;

    -- Vector3 Dot Product
    FUNCTION "*" (a, b : vec3_int) RETURN INTEGER IS
        VARIABLE result : INTEGER;
    BEGIN
        result := a(0) * b(0) + a(1) * b(1) + a(2) * b(2);
        RETURN result;
    END FUNCTION;

    -- Vector4 Addition
    FUNCTION "+" (a, b : vec4_int) RETURN vec4_int IS
        VARIABLE result : vec4_int;
    BEGIN
        result(0) := a(0) + b(0);
        result(1) := a(1) + b(1);
        result(2) := a(2) + b(2);
        result(3) := a(3) + b(3);
        RETURN result;
    END FUNCTION;

    -- Vector4 Subtraction
    FUNCTION "-" (a, b : vec4_int) RETURN vec4_int IS
        VARIABLE result : vec4_int;
    BEGIN
        result(0) := a(0) - b(0);
        result(1) := a(1) - b(1);
        result(2) := a(2) - b(2);
        result(3) := a(3) - b(3);
        RETURN result;
    END FUNCTION;

    -- Vector4 Dot Product
    FUNCTION "*" (a, b : vec4_int) RETURN INTEGER IS
        VARIABLE result : INTEGER;
    BEGIN
        result := a(0) * b(0) + a(1) * b(1) + a(2) * b(2) + a(3) * b(3);
        RETURN result;
    END FUNCTION;

    -- Matrix3 Addition
    FUNCTION "+" (a, b : mat3_int) RETURN mat3_int IS
        VARIABLE result : mat3_int;
    BEGIN
        result(0) := a(0) + b(0);
        result(1) := a(1) + b(1);
        result(2) := a(2) + b(2);
        RETURN result;
    END FUNCTION;

    -- Matrix3 Subtraction
    FUNCTION "-" (a, b : mat3_int) RETURN mat3_int IS
        VARIABLE result : mat3_int;
    BEGIN
        result(0) := a(0) - b(0);
        result(1) := a(1) - b(1);
        result(2) := a(2) - b(2);
        RETURN result;
    END FUNCTION;

    -- Matrix3 Multiplication
    FUNCTION "*" (a, b : mat3_int) RETURN mat3_int IS
        VARIABLE result : mat3_int;
    BEGIN
        result(0)(0) := a(0)(0) * b(0)(0) + a(0)(1) * b(1)(0) + a(0)(2) * b(2)(0);
        result(0)(1) := a(0)(0) * b(0)(1) + a(0)(1) * b(1)(1) + a(0)(2) * b(2)(1);
        result(0)(2) := a(0)(0) * b(0)(2) + a(0)(1) * b(1)(2) + a(0)(2) * b(2)(2);

        result(1)(0) := a(1)(0) * b(0)(0) + a(1)(1) * b(1)(0) + a(1)(2) * b(2)(0);
        result(1)(1) := a(1)(0) * b(0)(1) + a(1)(1) * b(1)(1) + a(1)(2) * b(2)(1);
        result(1)(2) := a(1)(0) * b(0)(2) + a(1)(1) * b(1)(2) + a(1)(2) * b(2)(2);

        result(2)(0) := a(2)(0) * b(0)(0) + a(2)(1) * b(1)(0) + a(2)(2) * b(2)(0);
        result(2)(1) := a(2)(0) * b(0)(1) + a(2)(1) * b(1)(1) + a(2)(2) * b(2)(1);
        result(2)(2) := a(2)(0) * b(0)(2) + a(2)(1) * b(1)(2) + a(2)(2) * b(2)(2);

        RETURN result;
    END FUNCTION;

    -- Matrix3 Vector3 Multiplication
    FUNCTION "*" (a : mat3_int; b : vec3_int) RETURN vec3_int IS
        VARIABLE result : vec3_int;
    BEGIN
        result(0) := a(0)(0) * b(0) + a(0)(1) * b(1) + a(0)(2) * b(2);
        result(1) := a(1)(0) * b(0) + a(1)(1) * b(1) + a(1)(2) * b(2);
        result(2) := a(2)(0) * b(0) + a(2)(1) * b(1) + a(2)(2) * b(2);
        RETURN result;
    END FUNCTION;

    -- Matrix4 Addition
    FUNCTION "+" (a, b : mat4_int) RETURN mat4_int IS
        VARIABLE result : mat4_int;
    BEGIN
        result(0) := a(0) + b(0);
        result(1) := a(1) + b(1);
        result(2) := a(2) + b(2);
        result(3) := a(3) + b(3);
        RETURN result;
    END FUNCTION;

    -- Matrix4 Subtraction
    FUNCTION "-" (a, b : mat4_int) RETURN mat4_int IS
        VARIABLE result : mat4_int;
    BEGIN
        result(0) := a(0) - b(0);
        result(1) := a(1) - b(1);
        result(2) := a(2) - b(2);
        result(3) := a(3) - b(3);
        RETURN result;
    END FUNCTION;

    -- Matrix4 Multiplication
    FUNCTION "*" (a, b : mat4_int) RETURN mat4_int IS
        VARIABLE result : mat4_int;
    BEGIN
        result(0)(0) := a(0)(0) * b(0)(0) + a(0)(1) * b(1)(0) + a(0)(2) * b(2)(0) + a(0)(3) * b(3)(0);
        result(0)(1) := a(0)(0) * b(0)(1) + a(0)(1) * b(1)(1) + a(0)(2) * b(2)(1) + a(0)(3) * b(3)(1);
        result(0)(2) := a(0)(0) * b(0)(2) + a(0)(1) * b(1)(2) + a(0)(2) * b(2)(2) + a(0)(3) * b(3)(2);
        result(0)(3) := a(0)(0) * b(0)(3) + a(0)(1) * b(1)(3) + a(0)(2) * b(2)(3) + a(0)(3) * b(3)(3);

        result(1)(0) := a(1)(0) * b(0)(0) + a(1)(1) * b(1)(0) + a(1)(2) * b(2)(0) + a(1)(3) * b(3)(0);
        result(1)(1) := a(1)(0) * b(0)(1) + a(1)(1) * b(1)(1) + a(1)(2) * b(2)(1) + a(1)(3) * b(3)(1);
        result(1)(2) := a(1)(0) * b(0)(2) + a(1)(1) * b(1)(2) + a(1)(2) * b(2)(2) + a(1)(3) * b(3)(2);
        result(1)(3) := a(1)(0) * b(0)(3) + a(1)(1) * b(1)(3) + a(1)(2) * b(2)(3) + a(1)(3) * b(3)(3);

        result(2)(0) := a(2)(0) * b(0)(0) + a(2)(1) * b(1)(0) + a(2)(2) * b(2)(0) + a(2)(3) * b(3)(0);
        result(2)(1) := a(2)(0) * b(0)(1) + a(2)(1) * b(1)(1) + a(2)(2) * b(2)(1) + a(2)(3) * b(3)(1);
        result(2)(2) := a(2)(0) * b(0)(2) + a(2)(1) * b(1)(2) + a(2)(2) * b(2)(2) + a(2)(3) * b(3)(2);
        result(2)(3) := a(2)(0) * b(0)(3) + a(2)(1) * b(1)(3) + a(2)(2) * b(2)(3) + a(2)(3) * b(3)(3);

        result(3)(0) := a(3)(0) * b(0)(0) + a(3)(1) * b(1)(0) + a(3)(2) * b(2)(0) + a(3)(3) * b(3)(0);
        result(3)(1) := a(3)(0) * b(0)(1) + a(3)(1) * b(1)(1) + a(3)(2) * b(2)(1) + a(3)(3) * b(3)(1);
        result(3)(2) := a(3)(0) * b(0)(2) + a(3)(1) * b(1)(2) + a(3)(2) * b(2)(2) + a(3)(3) * b(3)(2);
        result(3)(3) := a(3)(0) * b(0)(3) + a(3)(1) * b(1)(3) + a(3)(2) * b(2)(3) + a(3)(3) * b(3)(3);

        RETURN result;
    END FUNCTION;

    -- Matrix4 Vector4 Multiplication
    FUNCTION "*" (a : mat4_int; b : vec4_int) RETURN vec4_int IS
        VARIABLE result : vec4_int;
    BEGIN
        result(0) := a(0)(0) * b(0) + a(0)(1) * b(1) + a(0)(2) * b(2) + a(0)(3) * b(3);
        result(1) := a(1)(0) * b(0) + a(1)(1) * b(1) + a(1)(2) * b(2) + a(1)(3) * b(3);
        result(2) := a(2)(0) * b(0) + a(2)(1) * b(1) + a(2)(2) * b(2) + a(2)(3) * b(3);
        result(3) := a(3)(0) * b(0) + a(3)(1) * b(1) + a(3)(2) * b(2) + a(3)(3) * b(3);
        RETURN result;
    END FUNCTION;

    -------------------------------------------------------------------------------------
    -- FLOAT type data structures
    -------------------------------------------------------------------------------------

    -- Vector2 Addition
    FUNCTION "+" (a, b : vec2_float) RETURN vec2_float IS
        VARIABLE result : vec2_float;
    BEGIN
        result(0) := a(0) + b(0);
        result(1) := a(1) + b(1);
        RETURN result;
    END FUNCTION;

    -- Vector2 Subtraction
    FUNCTION "-" (a, b : vec2_float) RETURN vec2_float IS
        VARIABLE result : vec2_float;
    BEGIN
        result(0) := a(0) - b(0);
        result(1) := a(1) - b(1);
        RETURN result;
    END FUNCTION;

    -- Vector2 Dot Product
    FUNCTION "*" (a, b : vec2_float) RETURN float IS
        VARIABLE result : float;
    BEGIN
        result := a(0) * b(0) + a(1) * b(1);
        RETURN result;
    END FUNCTION;

    -- Vector3 Addition
    FUNCTION "+" (a, b : vec3_float) RETURN vec3_float IS
        VARIABLE result : vec3_float;
    BEGIN
        result(0) := a(0) + b(0);
        result(1) := a(1) + b(1);
        result(2) := a(2) + b(2);
        RETURN result;
    END FUNCTION;

    -- Vector3 Subtraction
    FUNCTION "-" (a, b : vec3_float) RETURN vec3_float IS
        VARIABLE result : vec3_float;
    BEGIN
        result(0) := a(0) - b(0);
        result(1) := a(1) - b(1);
        result(2) := a(2) - b(2);
        RETURN result;
    END FUNCTION;

    -- Vector3 Dot Product
    FUNCTION "*" (a, b : vec3_float) RETURN float IS
        VARIABLE result : float;
    BEGIN
        result := a(0) * b(0) + a(1) * b(1) + a(2) * b(2);
        RETURN result;
    END FUNCTION;

    -- Vector4 Addition
    FUNCTION "+" (a, b : vec4_float) RETURN vec4_float IS
        VARIABLE result : vec4_float;
    BEGIN
        result(0) := a(0) + b(0);
        result(1) := a(1) + b(1);
        result(2) := a(2) + b(2);
        result(3) := a(3) + b(3);
        RETURN result;
    END FUNCTION;

    -- Vector4 Subtraction
    FUNCTION "-" (a, b : vec4_float) RETURN vec4_float IS
        VARIABLE result : vec4_float;
    BEGIN
        result(0) := a(0) - b(0);
        result(1) := a(1) - b(1);
        result(2) := a(2) - b(2);
        result(3) := a(3) - b(3);
        RETURN result;
    END FUNCTION;

    -- Vector4 Dot Product
    FUNCTION "*" (a, b : vec4_float) RETURN float IS
        VARIABLE result : float;
    BEGIN
        result := a(0) * b(0) + a(1) * b(1) + a(2) * b(2) + a(3) * b(3);
        RETURN result;
    END FUNCTION;

    -- Matrix3 Addition
    FUNCTION "+" (a, b : mat3_float) RETURN mat3_float IS
        VARIABLE result : mat3_float;
    BEGIN
        result(0)(0) := a(0)(0) + b(0)(0);
        result(0)(1) := a(0)(1) + b(0)(1);
        result(0)(2) := a(0)(2) + b(0)(2);

        result(1)(0) := a(1)(0) + b(1)(0);
        result(1)(1) := a(1)(1) + b(1)(1);
        result(1)(2) := a(1)(2) + b(1)(2);

        result(2)(0) := a(2)(0) + b(2)(0);
        result(2)(1) := a(2)(1) + b(2)(1);
        result(2)(2) := a(2)(2) + b(2)(2);

        RETURN result;
    END FUNCTION;

    -- Matrix3 Subtraction
    FUNCTION "-" (a, b : mat3_float) RETURN mat3_float IS
        VARIABLE result : mat3_float;
    BEGIN
        result(0)(0) := a(0)(0) - b(0)(0);
        result(0)(1) := a(0)(1) - b(0)(1);
        result(0)(2) := a(0)(2) - b(0)(2);

        result(1)(0) := a(1)(0) - b(1)(0);
        result(1)(1) := a(1)(1) - b(1)(1);
        result(1)(2) := a(1)(2) - b(1)(2);

        result(2)(0) := a(2)(0) - b(2)(0);
        result(2)(1) := a(2)(1) - b(2)(1);
        result(2)(2) := a(2)(2) - b(2)(2);

        RETURN result;
    END FUNCTION;

    -- Matrix3 Multiplication
    FUNCTION "*" (a, b : mat3_float) RETURN mat3_float IS
        VARIABLE result : mat3_float;
    BEGIN
        result(0)(0) := a(0)(0) * b(0)(0) + a(0)(1) * b(1)(0) + a(0)(2) * b(2)(0);
        result(0)(1) := a(0)(0) * b(0)(1) + a(0)(1) * b(1)(1) + a(0)(2) * b(2)(1);
        result(0)(2) := a(0)(0) * b(0)(2) + a(0)(1) * b(1)(2) + a(0)(2) * b(2)(2);

        result(1)(0) := a(1)(0) * b(0)(0) + a(1)(1) * b(1)(0) + a(1)(2) * b(2)(0);
        result(1)(1) := a(1)(0) * b(0)(1) + a(1)(1) * b(1)(1) + a(1)(2) * b(2)(1);
        result(1)(2) := a(1)(0) * b(0)(2) + a(1)(1) * b(1)(2) + a(1)(2) * b(2)(2);

        result(2)(0) := a(2)(0) * b(0)(0) + a(2)(1) * b(1)(0) + a(2)(2) * b(2)(0);
        result(2)(1) := a(2)(0) * b(0)(1) + a(2)(1) * b(1)(1) + a(2)(2) * b(2)(1);
        result(2)(2) := a(2)(0) * b(0)(2) + a(2)(1) * b(1)(2) + a(2)(2) * b(2)(2);

        RETURN result;
    END FUNCTION;

    -- Matrix3 Vector3 Multiplication
    FUNCTION "*" (a : mat3_float; b : vec3_float) RETURN vec3_float IS
        VARIABLE result : vec3_float;
    BEGIN
        result(0) := a(0)(0) * b(0) + a(0)(1) * b(1) + a(0)(2) * b(2);
        result(1) := a(1)(0) * b(0) + a(1)(1) * b(1) + a(1)(2) * b(2);
        result(2) := a(2)(0) * b(0) + a(2)(1) * b(1) + a(2)(2) * b(2);
        RETURN result;
    END FUNCTION;

    -- Matrix4 Addition
    FUNCTION "+" (a, b : mat4_float) RETURN mat4_float IS
        VARIABLE result : mat4_float;
    BEGIN
        result(0) := a(0) + b(0);
        result(1) := a(1) + b(1);
        result(2) := a(2) + b(2);
        result(3) := a(3) + b(3);
        RETURN result;
    END FUNCTION;

    -- Matrix4 Subtraction
    FUNCTION "-" (a, b : mat4_float) RETURN mat4_float IS
        VARIABLE result : mat4_float;
    BEGIN
        result(0) := a(0) - b(0);
        result(1) := a(1) - b(1);
        result(2) := a(2) - b(2);
        result(3) := a(3) - b(3);
        RETURN result;
    END FUNCTION;

    -- Matrix4 Multiplication
    FUNCTION "*" (a, b : mat4_float) RETURN mat4_float IS
        VARIABLE result : mat4_float;
    BEGIN
        result(0)(0) := a(0)(0) * b(0)(0) + a(0)(1) * b(1)(0) + a(0)(2) * b(2)(0) + a(0)(3) * b(3)(0);
        result(0)(1) := a(0)(0) * b(0)(1) + a(0)(1) * b(1)(1) + a(0)(2) * b(2)(1) + a(0)(3) * b(3)(1);
        result(0)(2) := a(0)(0) * b(0)(2) + a(0)(1) * b(1)(2) + a(0)(2) * b(2)(2) + a(0)(3) * b(3)(2);
        result(0)(3) := a(0)(0) * b(0)(3) + a(0)(1) * b(1)(3) + a(0)(2) * b(2)(3) + a(0)(3) * b(3)(3);

        result(1)(0) := a(1)(0) * b(0)(0) + a(1)(1) * b(1)(0) + a(1)(2) * b(2)(0) + a(1)(3) * b(3)(0);
        result(1)(1) := a(1)(0) * b(0)(1) + a(1)(1) * b(1)(1) + a(1)(2) * b(2)(1) + a(1)(3) * b(3)(1);
        result(1)(2) := a(1)(0) * b(0)(2) + a(1)(1) * b(1)(2) + a(1)(2) * b(2)(2) + a(1)(3) * b(3)(2);
        result(1)(3) := a(1)(0) * b(0)(3) + a(1)(1) * b(1)(3) + a(1)(2) * b(2)(3) + a(1)(3) * b(3)(3);

        result(2)(0) := a(2)(0) * b(0)(0) + a(2)(1) * b(1)(0) + a(2)(2) * b(2)(0) + a(2)(3) * b(3)(0);
        result(2)(1) := a(2)(0) * b(0)(1) + a(2)(1) * b(1)(1) + a(2)(2) * b(2)(1) + a(2)(3) * b(3)(1);
        result(2)(2) := a(2)(0) * b(0)(2) + a(2)(1) * b(1)(2) + a(2)(2) * b(2)(2) + a(2)(3) * b(3)(2);
        result(2)(3) := a(2)(0) * b(0)(3) + a(2)(1) * b(1)(3) + a(2)(2) * b(2)(3) + a(2)(3) * b(3)(3);

        result(3)(0) := a(3)(0) * b(0)(0) + a(3)(1) * b(1)(0) + a(3)(2) * b(2)(0) + a(3)(3) * b(3)(0);
        result(3)(1) := a(3)(0) * b(0)(1) + a(3)(1) * b(1)(1) + a(3)(2) * b(2)(1) + a(3)(3) * b(3)(1);
        result(3)(2) := a(3)(0) * b(0)(2) + a(3)(1) * b(1)(2) + a(3)(2) * b(2)(2) + a(3)(3) * b(3)(2);
        result(3)(3) := a(3)(0) * b(0)(3) + a(3)(1) * b(1)(3) + a(3)(2) * b(2)(3) + a(3)(3) * b(3)(3);

        RETURN result;
    END FUNCTION;

    -- Matrix4 Vector4 Multiplication
    FUNCTION "*" (a : mat4_float; b : vec4_float) RETURN vec4_float IS
        VARIABLE result : vec4_float;
    BEGIN
        result(0) := a(0)(0) * b(0) + a(0)(1) * b(1) + a(0)(2) * b(2) + a(0)(3) * b(3);
        result(1) := a(1)(0) * b(0) + a(1)(1) * b(1) + a(1)(2) * b(2) + a(1)(3) * b(3);
        result(2) := a(2)(0) * b(0) + a(2)(1) * b(1) + a(2)(2) * b(2) + a(2)(3) * b(3);
        result(3) := a(3)(0) * b(0) + a(3)(1) * b(1) + a(3)(2) * b(2) + a(3)(3) * b(3);
        RETURN result;
    END FUNCTION;
    -----------------------------------------------
    --               Projection                  --
    -----------------------------------------------
    -- Perspective Projection
    FUNCTION perspective(left, right, bottom, top, near, far : INTEGER) RETURN mat4_float IS
        VARIABLE result : mat4_float;
    BEGIN
        result(0)(0) := to_float((2.0 * near) / (aspect * fov));
        result(0)(1) := to_float(0.0);
        result(0)(2) := to_float((right + left) / (right - left));
        result(0)(3) := to_float(0.0);

        result(1)(0) := to_float(0.0);
        result(1)(1) := to_float((2.0 * near) / (top - bottom));
        result(1)(2) := to_float((top + bottom) / (top - bottom));
        result(1)(3) := to_float(0.0);

        result(2)(0) := to_float(0.0);
        result(2)(1) := to_float(0.0);
        result(2)(2) := to_float(-1.0 * (far + near) / (far - near));
        result(2)(3) := to_float(-1.0 * (2.0 * far * near) / (far - near));

        result(3)(0) := to_float(0.0);
        result(3)(1) := to_float(0.0);
        result(3)(2) := to_float(-1.0);
        result(3)(3) := to_float(0.0);

        RETURN result;
    END FUNCTION;

    -- Orthographic Projection
    FUNCTION orthographic(left, right, bottom, top, near, far : INTEGER) RETURN mat4_float IS
        VARIABLE result : mat4_float;
    BEGIN
        result(0)(0) := to_float(2.0 / (right - left));
        result(0)(1) := to_float(0.0);
        result(0)(2) := to_float(0.0);
        result(0)(3) := to_float(-1.0 * (right + left) / (right - left));

        result(1)(0) := to_float(0.0);
        result(1)(1) := to_float(2.0 / (top - bottom));
        result(1)(2) := to_float(0.0);
        result(1)(3) := to_float(-1.0 * (top + bottom) / (top - bottom));

        result(2)(0) := to_float(0.0);
        result(2)(1) := to_float(0.0);
        result(2)(2) := to_float(-2.0 / (far - near));
        result(2)(3) := to_float(-1.0 * (far + near) / (far - near));

        result(3)(0) := to_float(0.0);
        result(3)(1) := to_float(0.0);
        result(3)(2) := to_float(0.0);
        result(3)(3) := to_float(1.0);

        RETURN result;
    END FUNCTION;
END PACKAGE BODY;