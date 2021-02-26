## Type cast
CREATE FUNCTION pg_catalog.text(integer) RETURNS text STRICT IMMUTABLE LANGUAGE SQL AS 'SELECT textin(int4out($1));';
CREATE CAST (integer AS text) WITH FUNCTION pg_catalog.text(integer) AS IMPLICIT;
CREATE FUNCTION pg_catalog.text(smallint) RETURNS text STRICT IMMUTABLE LANGUAGE SQL AS 'SELECT textin(int2out($1));';
CREATE CAST (smallint AS text) WITH FUNCTION pg_catalog.text(smallint) AS IMPLICIT;
CREATE FUNCTION pg_catalog.text(oid) RETURNS text STRICT IMMUTABLE LANGUAGE SQL AS 'SELECT textin(oidout($1));';
CREATE CAST (oid AS text) WITH FUNCTION pg_catalog.text(oid) AS IMPLICIT;
CREATE FUNCTION pg_catalog.text(date) RETURNS text STRICT IMMUTABLE LANGUAGE SQL AS 'SELECT textin(date_out($1));';
CREATE CAST (date AS text) WITH FUNCTION pg_catalog.text(date) AS IMPLICIT;
CREATE FUNCTION pg_catalog.text(double precision) RETURNS text STRICT IMMUTABLE LANGUAGE SQL AS 'SELECT textin(float8out($1));';
CREATE CAST (double precision AS text) WITH FUNCTION pg_catalog.text(double precision) AS IMPLICIT;
CREATE FUNCTION pg_catalog.text(real) RETURNS text STRICT IMMUTABLE LANGUAGE SQL AS 'SELECT textin(float4out($1));';
CREATE CAST (real AS text) WITH FUNCTION pg_catalog.text(real) AS IMPLICIT;
CREATE FUNCTION pg_catalog.text(time with time zone) RETURNS text STRICT IMMUTABLE LANGUAGE SQL AS 'SELECT textin(timetz_out($1));';
CREATE CAST (time with time zone AS text) WITH FUNCTION pg_catalog.text(time with time zone) AS IMPLICIT;
CREATE FUNCTION pg_catalog.text(time without time zone) RETURNS text STRICT IMMUTABLE LANGUAGE SQL AS 'SELECT textin(time_out($1));';
CREATE CAST (time without time zone AS text) WITH FUNCTION pg_catalog.text(time without time zone) AS IMPLICIT;
CREATE FUNCTION pg_catalog.text(timestamp with time zone) RETURNS text STRICT IMMUTABLE LANGUAGE SQL AS 'SELECT textin(timestamptz_out($1));';
CREATE CAST (timestamp with time zone AS text) WITH FUNCTION pg_catalog.text(timestamp with time zone) AS IMPLICIT;
CREATE FUNCTION pg_catalog.text(interval) RETURNS text STRICT IMMUTABLE LANGUAGE SQL AS 'SELECT textin(interval_out($1));';
CREATE CAST (interval AS text) WITH FUNCTION pg_catalog.text(interval) AS IMPLICIT;
CREATE FUNCTION pg_catalog.text(bigint) RETURNS text STRICT IMMUTABLE LANGUAGE SQL AS 'SELECT textin(int8out($1));';
CREATE CAST (bigint AS text) WITH FUNCTION pg_catalog.text(bigint) AS IMPLICIT;
CREATE FUNCTION pg_catalog.text(numeric) RETURNS text STRICT IMMUTABLE LANGUAGE SQL AS 'SELECT textin(numeric_out($1));';
CREATE CAST (numeric AS text) WITH FUNCTION pg_catalog.text(numeric) AS IMPLICIT;
CREATE FUNCTION pg_catalog.text(timestamp without time zone) RETURNS text STRICT IMMUTABLE LANGUAGE SQL AS 'SELECT textin(timestamp_out($1));';
CREATE CAST (timestamp without time zone AS text) WITH FUNCTION pg_catalog.text(timestamp without time zone) AS IMPLICIT;


--Operatort =
CREATE FUNCTION pg_catalog.texteqint(text, integer) RETURNS BOOLEAN STRICT IMMUTABLE LANGUAGE SQL AS $$SELECT textin(int4out($2)) = $1;$$;
CREATE FUNCTION pg_catalog.texteqint2(text, smallint) RETURNS BOOLEAN STRICT IMMUTABLE LANGUAGE SQL AS $$SELECT textin(int2out($2)) = $1;$$;
CREATE FUNCTION pg_catalog.texteqoid(text, oid) RETURNS BOOLEAN STRICT IMMUTABLE LANGUAGE SQL AS $$SELECT textin(oidout($2)) = $1;$$;
CREATE FUNCTION pg_catalog.texteqdate(text, date) RETURNS BOOLEAN STRICT IMMUTABLE LANGUAGE SQL AS $$SELECT textin(date_out($2)) = $1;$$;
CREATE FUNCTION pg_catalog.texteqfloat8(text, double precision) RETURNS BOOLEAN STRICT IMMUTABLE LANGUAGE SQL AS $$SELECT textin(float8out($2)) = $1;$$;
CREATE FUNCTION pg_catalog.texteqreal(text, real) RETURNS BOOLEAN STRICT IMMUTABLE LANGUAGE SQL AS $$SELECT textin(float4out($2)) = $1;$$;
CREATE FUNCTION pg_catalog.texteqtimetz(text, time WITH time zone) RETURNS BOOLEAN STRICT IMMUTABLE LANGUAGE SQL AS $$SELECT textin(timetz_out($2)) = $1;$$;
CREATE FUNCTION pg_catalog.texteqtime(text, time without time zone) RETURNS BOOLEAN STRICT IMMUTABLE LANGUAGE SQL AS $$SELECT textin(time_out($2)) = $1;$$;
CREATE FUNCTION pg_catalog.texteqtimestamptz(text, timestamp WITH time zone) RETURNS BOOLEAN STRICT IMMUTABLE LANGUAGE SQL AS $$SELECT textin(timestamptz_out($2)) = $1;$$;
CREATE FUNCTION pg_catalog.texteqinterval(text, interval) RETURNS BOOLEAN STRICT IMMUTABLE LANGUAGE SQL AS $$SELECT textin(interval_out($2)) = $1;$$;
CREATE FUNCTION pg_catalog.texteqint8(text, bigint) RETURNS BOOLEAN STRICT IMMUTABLE LANGUAGE SQL AS $$SELECT textin(int8out($2)) = $1;$$;
CREATE FUNCTION pg_catalog.texteqnumeric(text, numeric) RETURNS BOOLEAN STRICT IMMUTABLE LANGUAGE SQL AS $$SELECT textin(numeric_out($2)) = $1;$$;
CREATE FUNCTION pg_catalog.texteqtimestamp(text, timestamp without time zone) RETURNS BOOLEAN STRICT IMMUTABLE LANGUAGE SQL AS $$SELECT textin(timestamp_out($2)) = $1;$$;

CREATE FUNCTION pg_catalog.inteqtext(integer, text) RETURNS BOOLEAN STRICT IMMUTABLE LANGUAGE SQL AS $$SELECT textin(int4out($1)) = $2;$$;
CREATE FUNCTION pg_catalog.int2eqtext(smallint, text) RETURNS BOOLEAN STRICT IMMUTABLE LANGUAGE SQL AS $$SELECT textin(int2out($1)) = $2;$$;
CREATE FUNCTION pg_catalog.oideqtext(oid, text) RETURNS BOOLEAN STRICT IMMUTABLE LANGUAGE SQL AS $$SELECT textin(oidout($1)) = $2;$$;
CREATE FUNCTION pg_catalog.dateeqtext(date, text) RETURNS BOOLEAN STRICT IMMUTABLE LANGUAGE SQL AS $$SELECT textin(date_out($1)) = $2;$$;
CREATE FUNCTION pg_catalog.float8eqtext(double precision, text) RETURNS BOOLEAN STRICT IMMUTABLE LANGUAGE SQL AS $$SELECT textin(float8out($1)) = $2;$$;
CREATE FUNCTION pg_catalog.realeqtext(real, text) RETURNS BOOLEAN STRICT IMMUTABLE LANGUAGE SQL AS $$SELECT textin(float4out($1)) = $2;$$;
CREATE FUNCTION pg_catalog.timetzeqtext(time WITH time zone, text) RETURNS BOOLEAN STRICT IMMUTABLE LANGUAGE SQL AS $$SELECT textin(timetz_out($1)) = $2;$$;
CREATE FUNCTION pg_catalog.timeeqtext(time without time zone, text) RETURNS BOOLEAN STRICT IMMUTABLE LANGUAGE SQL AS $$SELECT textin(time_out($1)) = $2;$$;
CREATE FUNCTION pg_catalog.timestamptzeqtext(timestamp WITH time zone, text) RETURNS BOOLEAN STRICT IMMUTABLE LANGUAGE SQL AS $$SELECT textin(timestamptz_out($1)) = $2;$$;
CREATE FUNCTION pg_catalog.intervaleqtext(interval, text) RETURNS BOOLEAN STRICT IMMUTABLE LANGUAGE SQL AS $$SELECT textin(interval_out($1)) = $2;$$;
CREATE FUNCTION pg_catalog.int8eqtext(bigint, text) RETURNS BOOLEAN STRICT IMMUTABLE LANGUAGE SQL AS $$SELECT textin(int8out($1)) = $2;$$;
CREATE FUNCTION pg_catalog.numericeqtext(numeric, text) RETURNS BOOLEAN STRICT IMMUTABLE LANGUAGE SQL AS $$SELECT textin(numeric_out($1)) = $2;$$;
CREATE FUNCTION pg_catalog.timestampeqtext(timestamp without time zone, text) RETURNS BOOLEAN STRICT IMMUTABLE LANGUAGE SQL AS $$SELECT textin(timestamp_out($1)) = $2;$$;

CREATE OPERATOR pg_catalog.= ( PROCEDURE = pg_catalog.texteqint, LEFTARG=text, RIGHTARG=integer, COMMUTATOR=OPERATOR(pg_catalog.=));
CREATE OPERATOR pg_catalog.= ( PROCEDURE = pg_catalog.texteqint2, LEFTARG=text, RIGHTARG=smallint, COMMUTATOR=OPERATOR(pg_catalog.=));
CREATE OPERATOR pg_catalog.= ( PROCEDURE = pg_catalog.texteqoid, LEFTARG=text, RIGHTARG=oid, COMMUTATOR=OPERATOR(pg_catalog.=));
CREATE OPERATOR pg_catalog.= ( PROCEDURE = pg_catalog.texteqdate, LEFTARG=text, RIGHTARG=date, COMMUTATOR=OPERATOR(pg_catalog.=));
CREATE OPERATOR pg_catalog.= ( PROCEDURE = pg_catalog.texteqfloat8, LEFTARG=text, RIGHTARG=double precision, COMMUTATOR=OPERATOR(pg_catalog.=));
CREATE OPERATOR pg_catalog.= ( PROCEDURE = pg_catalog.texteqreal, LEFTARG=text, RIGHTARG=real, COMMUTATOR=OPERATOR(pg_catalog.=));
CREATE OPERATOR pg_catalog.= ( PROCEDURE = pg_catalog.texteqtimetz, LEFTARG=text, RIGHTARG=time WITH time zone, COMMUTATOR=OPERATOR(pg_catalog.=));
CREATE OPERATOR pg_catalog.= ( PROCEDURE = pg_catalog.texteqtime, LEFTARG=text, RIGHTARG=time without time zone, COMMUTATOR=OPERATOR(pg_catalog.=));
CREATE OPERATOR pg_catalog.= ( PROCEDURE = pg_catalog.texteqtimestamptz, LEFTARG=text, RIGHTARG=timestamp WITH time zone, COMMUTATOR=OPERATOR(pg_catalog.=));
CREATE OPERATOR pg_catalog.= ( PROCEDURE = pg_catalog.texteqinterval, LEFTARG=text, RIGHTARG=interval, COMMUTATOR=OPERATOR(pg_catalog.=));
CREATE OPERATOR pg_catalog.= ( PROCEDURE = pg_catalog.texteqint8, LEFTARG=text, RIGHTARG=bigint, COMMUTATOR=OPERATOR(pg_catalog.=));
CREATE OPERATOR pg_catalog.= ( PROCEDURE = pg_catalog.texteqnumeric, LEFTARG=text, RIGHTARG=numeric, COMMUTATOR=OPERATOR(pg_catalog.=));
CREATE OPERATOR pg_catalog.= ( PROCEDURE = pg_catalog.texteqtimestamp, LEFTARG=text, RIGHTARG=timestamp without time zone, COMMUTATOR=OPERATOR(pg_catalog.=));

CREATE OPERATOR pg_catalog.= ( PROCEDURE = pg_catalog.inteqtext, LEFTARG=integer, RIGHTARG=text, COMMUTATOR=OPERATOR(pg_catalog.=));
CREATE OPERATOR pg_catalog.= ( PROCEDURE = pg_catalog.int2eqtext, LEFTARG=smallint, RIGHTARG=text, COMMUTATOR=OPERATOR(pg_catalog.=));
CREATE OPERATOR pg_catalog.= ( PROCEDURE = pg_catalog.oideqtext, LEFTARG=oid, RIGHTARG=text, COMMUTATOR=OPERATOR(pg_catalog.=));
CREATE OPERATOR pg_catalog.= ( PROCEDURE = pg_catalog.dateeqtext, LEFTARG=date, RIGHTARG=text, COMMUTATOR=OPERATOR(pg_catalog.=));
CREATE OPERATOR pg_catalog.= ( PROCEDURE = pg_catalog.float8eqtext, LEFTARG=double precision, RIGHTARG=text, COMMUTATOR=OPERATOR(pg_catalog.=));
CREATE OPERATOR pg_catalog.= ( PROCEDURE = pg_catalog.realeqtext, LEFTARG=real, RIGHTARG=text, COMMUTATOR=OPERATOR(pg_catalog.=));
CREATE OPERATOR pg_catalog.= ( PROCEDURE = pg_catalog.timetzeqtext, LEFTARG=time WITH time zone, RIGHTARG=text, COMMUTATOR=OPERATOR(pg_catalog.=));
CREATE OPERATOR pg_catalog.= ( PROCEDURE = pg_catalog.timeeqtext, LEFTARG=time without time zone, RIGHTARG=text, COMMUTATOR=OPERATOR(pg_catalog.=));
CREATE OPERATOR pg_catalog.= ( PROCEDURE = pg_catalog.timestamptzeqtext, LEFTARG=timestamp WITH time zone, RIGHTARG=text, COMMUTATOR=OPERATOR(pg_catalog.=));
CREATE OPERATOR pg_catalog.= ( PROCEDURE = pg_catalog.intervaleqtext, LEFTARG=interval, RIGHTARG=text, COMMUTATOR=OPERATOR(pg_catalog.=));
CREATE OPERATOR pg_catalog.= ( PROCEDURE = pg_catalog.int8eqtext, LEFTARG=bigint, RIGHTARG=text, COMMUTATOR=OPERATOR(pg_catalog.=));
CREATE OPERATOR pg_catalog.= ( PROCEDURE = pg_catalog.numericeqtext, LEFTARG=numeric, RIGHTARG=text, COMMUTATOR=OPERATOR(pg_catalog.=));
CREATE OPERATOR pg_catalog.= ( PROCEDURE = pg_catalog.timestampeqtext, LEFTARG=timestamp without time zone, RIGHTARG=text, COMMUTATOR=OPERATOR(pg_catalog.=));


-- Operator || 

CREATE FUNCTION pg_catalog.textconcatint(text, integer)                           RETURNS text AS 'SELECT $1 || $2::pg_catalog.text' LANGUAGE sql IMMUTABLE STRICT;
CREATE FUNCTION pg_catalog.textconcatint2(text, smallint)                         RETURNS text AS 'SELECT $1 || $2::pg_catalog.text' LANGUAGE sql IMMUTABLE STRICT;
CREATE FUNCTION pg_catalog.textconcatoid(text, oid)                               RETURNS text AS 'SELECT $1 || $2::pg_catalog.text' LANGUAGE sql IMMUTABLE STRICT;
CREATE FUNCTION pg_catalog.textconcatdate(text, date)                             RETURNS text AS 'SELECT $1 || $2::pg_catalog.text' LANGUAGE sql IMMUTABLE STRICT;
CREATE FUNCTION pg_catalog.textconcatfloat8(text, double precision)               RETURNS text AS 'SELECT $1 || $2::pg_catalog.text' LANGUAGE sql IMMUTABLE STRICT;
CREATE FUNCTION pg_catalog.textconcatreal(text, real)                             RETURNS text AS 'SELECT $1 || $2::pg_catalog.text' LANGUAGE sql IMMUTABLE STRICT;
CREATE FUNCTION pg_catalog.textconcattimetz(text, time WITH time zone)            RETURNS text AS 'SELECT $1 || $2::pg_catalog.text' LANGUAGE sql IMMUTABLE STRICT;
CREATE FUNCTION pg_catalog.textconcattime(text, time without time zone)           RETURNS text AS 'SELECT $1 || $2::pg_catalog.text' LANGUAGE sql IMMUTABLE STRICT;
CREATE FUNCTION pg_catalog.textconcattimestamptz(text, timestamp WITH time zone)  RETURNS text AS 'SELECT $1 || $2::pg_catalog.text' LANGUAGE sql IMMUTABLE STRICT;
CREATE FUNCTION pg_catalog.textconcatinterval(text, interval)                     RETURNS text AS 'SELECT $1 || $2::pg_catalog.text' LANGUAGE sql IMMUTABLE STRICT;
CREATE FUNCTION pg_catalog.textconcatint8(text, bigint)                           RETURNS text AS 'SELECT $1 || $2::pg_catalog.text' LANGUAGE sql IMMUTABLE STRICT;
CREATE FUNCTION pg_catalog.textconcatnumeric(text, numeric)                       RETURNS text AS 'SELECT $1 || $2::pg_catalog.text' LANGUAGE sql IMMUTABLE STRICT;
CREATE FUNCTION pg_catalog.textconcattimestamp(text, timestamp without time zone) RETURNS text AS 'SELECT $1 || $2::pg_catalog.text' LANGUAGE sql IMMUTABLE STRICT;

CREATE FUNCTION pg_catalog.intconcattext(integer, text)                           RETURNS text AS 'SELECT $1::pg_catalog.text || $2' LANGUAGE sql IMMUTABLE STRICT;
CREATE FUNCTION pg_catalog.int2concattext(smallint, text)                         RETURNS text AS 'SELECT $1::pg_catalog.text || $2' LANGUAGE sql IMMUTABLE STRICT;
CREATE FUNCTION pg_catalog.oidconcattext(oid, text)                               RETURNS text AS 'SELECT $1::pg_catalog.text || $2' LANGUAGE sql IMMUTABLE STRICT;
CREATE FUNCTION pg_catalog.dateconcattext(date, text)                             RETURNS text AS 'SELECT $1::pg_catalog.text || $2' LANGUAGE sql IMMUTABLE STRICT;
CREATE FUNCTION pg_catalog.float8concattext(double precision, text)               RETURNS text AS 'SELECT $1::pg_catalog.text || $2' LANGUAGE sql IMMUTABLE STRICT;
CREATE FUNCTION pg_catalog.realconcattext(real, text)                             RETURNS text AS 'SELECT $1::pg_catalog.text || $2' LANGUAGE sql IMMUTABLE STRICT;
CREATE FUNCTION pg_catalog.timetzconcattext(time WITH time zone, text)            RETURNS text AS 'SELECT $1::pg_catalog.text || $2' LANGUAGE sql IMMUTABLE STRICT;
CREATE FUNCTION pg_catalog.timeconcattext(time without time zone, text)           RETURNS text AS 'SELECT $1::pg_catalog.text || $2' LANGUAGE sql IMMUTABLE STRICT;
CREATE FUNCTION pg_catalog.timestamptzconcattext(timestamp WITH time zone, text)  RETURNS text AS 'SELECT $1::pg_catalog.text || $2' LANGUAGE sql IMMUTABLE STRICT;
CREATE FUNCTION pg_catalog.intervalconcattext(interval, text)                     RETURNS text AS 'SELECT $1::pg_catalog.text || $2' LANGUAGE sql IMMUTABLE STRICT;
CREATE FUNCTION pg_catalog.int8concattext(bigint, text)                           RETURNS text AS 'SELECT $1::pg_catalog.text || $2' LANGUAGE sql IMMUTABLE STRICT;
CREATE FUNCTION pg_catalog.numericconcattext(numeric, text)                       RETURNS text AS 'SELECT $1::pg_catalog.text || $2' LANGUAGE sql IMMUTABLE STRICT;
CREATE FUNCTION pg_catalog.timestampconcattext(timestamp without time zone, text) RETURNS text AS 'SELECT $1::pg_catalog.text || $2' LANGUAGE sql IMMUTABLE STRICT;

CREATE OPERATOR pg_catalog.|| ( PROCEDURE = pg_catalog.textconcatint, LEFTARG=text, RIGHTARG=integer, COMMUTATOR=OPERATOR(pg_catalog.||));
CREATE OPERATOR pg_catalog.|| ( PROCEDURE = pg_catalog.textconcatint2, LEFTARG=text, RIGHTARG=smallint, COMMUTATOR=OPERATOR(pg_catalog.||));
CREATE OPERATOR pg_catalog.|| ( PROCEDURE = pg_catalog.textconcatoid, LEFTARG=text, RIGHTARG=oid, COMMUTATOR=OPERATOR(pg_catalog.||));
CREATE OPERATOR pg_catalog.|| ( PROCEDURE = pg_catalog.textconcatdate, LEFTARG=text, RIGHTARG=date, COMMUTATOR=OPERATOR(pg_catalog.||));
CREATE OPERATOR pg_catalog.|| ( PROCEDURE = pg_catalog.textconcatfloat8, LEFTARG=text, RIGHTARG=double precision, COMMUTATOR=OPERATOR(pg_catalog.||));
CREATE OPERATOR pg_catalog.|| ( PROCEDURE = pg_catalog.textconcatreal, LEFTARG=text, RIGHTARG=real, COMMUTATOR=OPERATOR(pg_catalog.||));
CREATE OPERATOR pg_catalog.|| ( PROCEDURE = pg_catalog.textconcattimetz, LEFTARG=text, RIGHTARG=time WITH time zone, COMMUTATOR=OPERATOR(pg_catalog.||));
CREATE OPERATOR pg_catalog.|| ( PROCEDURE = pg_catalog.textconcattime, LEFTARG=text, RIGHTARG=time without time zone, COMMUTATOR=OPERATOR(pg_catalog.||));
CREATE OPERATOR pg_catalog.|| ( PROCEDURE = pg_catalog.textconcattimestamptz, LEFTARG=text, RIGHTARG=timestamp WITH time zone, COMMUTATOR=OPERATOR(pg_catalog.||));
CREATE OPERATOR pg_catalog.|| ( PROCEDURE = pg_catalog.textconcatinterval, LEFTARG=text, RIGHTARG=interval, COMMUTATOR=OPERATOR(pg_catalog.||));
CREATE OPERATOR pg_catalog.|| ( PROCEDURE = pg_catalog.textconcatint8, LEFTARG=text, RIGHTARG=bigint, COMMUTATOR=OPERATOR(pg_catalog.||));
CREATE OPERATOR pg_catalog.|| ( PROCEDURE = pg_catalog.textconcatnumeric, LEFTARG=text, RIGHTARG=numeric, COMMUTATOR=OPERATOR(pg_catalog.||));
CREATE OPERATOR pg_catalog.|| ( PROCEDURE = pg_catalog.textconcattimestamp, LEFTARG=text, RIGHTARG=timestamp without time zone, COMMUTATOR=OPERATOR(pg_catalog.||));

CREATE OPERATOR pg_catalog.|| ( PROCEDURE = pg_catalog.intconcattext,     LEFTARG=integer, RIGHTARG=text, COMMUTATOR=OPERATOR(pg_catalog.||));
CREATE OPERATOR pg_catalog.|| ( PROCEDURE = pg_catalog.int2concattext,    LEFTARG=smallint, RIGHTARG=text, COMMUTATOR=OPERATOR(pg_catalog.||));
CREATE OPERATOR pg_catalog.|| ( PROCEDURE = pg_catalog.oidconcattext,     LEFTARG=oid, RIGHTARG=text, COMMUTATOR=OPERATOR(pg_catalog.||));
CREATE OPERATOR pg_catalog.|| ( PROCEDURE = pg_catalog.dateconcattext,    LEFTARG=date, RIGHTARG=text, COMMUTATOR=OPERATOR(pg_catalog.||));
CREATE OPERATOR pg_catalog.|| ( PROCEDURE = pg_catalog.float8concattext,  LEFTARG=double precision, RIGHTARG=text, COMMUTATOR=OPERATOR(pg_catalog.||));
CREATE OPERATOR pg_catalog.|| ( PROCEDURE = pg_catalog.realconcattext,    LEFTARG=real, RIGHTARG=text, COMMUTATOR=OPERATOR(pg_catalog.||));
CREATE OPERATOR pg_catalog.|| ( PROCEDURE = pg_catalog.timetzconcattext,  LEFTARG=time WITH time zone, RIGHTARG=text, COMMUTATOR=OPERATOR(pg_catalog.||));
CREATE OPERATOR pg_catalog.|| ( PROCEDURE = pg_catalog.timeconcattext,    LEFTARG=time without time zone, RIGHTARG=text, COMMUTATOR=OPERATOR(pg_catalog.||));
CREATE OPERATOR pg_catalog.|| ( PROCEDURE = pg_catalog.timestamptzconcattext, LEFTARG=timestamp WITH time zone, RIGHTARG=text, COMMUTATOR=OPERATOR(pg_catalog.||));
CREATE OPERATOR pg_catalog.|| ( PROCEDURE = pg_catalog.intervalconcattext,    LEFTARG=interval, RIGHTARG=text, COMMUTATOR=OPERATOR(pg_catalog.||));
CREATE OPERATOR pg_catalog.|| ( PROCEDURE = pg_catalog.int8concattext,        LEFTARG=bigint, RIGHTARG=text, COMMUTATOR=OPERATOR(pg_catalog.||));
CREATE OPERATOR pg_catalog.|| ( PROCEDURE = pg_catalog.numericconcattext,     LEFTARG=numeric, RIGHTARG=text, COMMUTATOR=OPERATOR(pg_catalog.||));
CREATE OPERATOR pg_catalog.|| ( PROCEDURE = pg_catalog.timestampconcattext,   LEFTARG=timestamp without time zone, RIGHTARG=text, COMMUTATOR=OPERATOR(pg_catalog.||));


-- Operator >
CREATE FUNCTION pg_catalog.numericgtint(numeric, integer) RETURNS BOOLEAN STRICT IMMUTABLE LANGUAGE SQL AS $$SELECT $2::numeric > $1;$$;
CREATE OPERATOR pg_catalog.= ( PROCEDURE = pg_catalog.numericgtint, LEFTARG=numeric, RIGHTARG=integer, COMMUTATOR=OPERATOR(pg_catalog.>));


-- If there is an error during gpbackup, run the below script. 
CREATE FUNCTION pg_catalog.oidcconcatunknown (oid, unknown) RETURNS text AS 'SELECT $1::pg_catalog.text || $2::pg_catalog.text' LANGUAGE sql IMMUTABLE STRICT;
CREATE OPERATOR pg_catalog.|| (PROCEDURE = pg_catalog.oidcconcatunknown, LEFTARG = oid, RIGHTARG = unknown );

CREATE FUNCTION pg_catalog.oidcconcatunknown2 (unknown,oid) RETURNS text AS 'SELECT $1::pg_catalog.text || $2::pg_catalog.text' LANGUAGE sql IMMUTABLE STRICT;
CREATE OPERATOR pg_catalog.|| (PROCEDURE = pg_catalog.oidcconcatunknown2, LEFTARG = unknown, RIGHTARG = oid );

-- decode error
CREATE FUNCTION pg_catalog.numericeqint(numeric, integer) RETURNS BOOLEAN STRICT IMMUTABLE LANGUAGE SQL AS $$SELECT $2::numeric = $1;$$;
CREATE OPERATOR pg_catalog.= ( PROCEDURE = pg_catalog.numericeqint, LEFTARG=numeric, RIGHTARG=integer, COMMUTATOR=OPERATOR(pg_catalog.=));

CREATE FUNCTION pg_catalog.inteqnumeric(integer,numeric) RETURNS BOOLEAN STRICT IMMUTABLE LANGUAGE SQL AS $$SELECT $2 = $1::numeric;$$;
CREATE OPERATOR pg_catalog.= ( PROCEDURE = pg_catalog.inteqnumeric, LEFTARG=integer, RIGHTARG=numeric, COMMUTATOR=OPERATOR(pg_catalog.=));
