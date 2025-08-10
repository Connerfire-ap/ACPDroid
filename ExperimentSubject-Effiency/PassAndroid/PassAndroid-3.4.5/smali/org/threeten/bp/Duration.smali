.class public final Lorg/threeten/bp/Duration;
.super Ljava/lang/Object;
.source "Duration.java"

# interfaces
.implements Lorg/threeten/bp/temporal/TemporalAmount;
.implements Ljava/lang/Comparable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/threeten/bp/Duration$1;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/threeten/bp/temporal/TemporalAmount;",
        "Ljava/lang/Comparable",
        "<",
        "Lorg/threeten/bp/Duration;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final BI_NANOS_PER_SECOND:Ljava/math/BigInteger;

.field private static final NANOS_PER_MILLI:I = 0xf4240

.field private static final NANOS_PER_SECOND:I = 0x3b9aca00

.field private static final PATTERN:Ljava/util/regex/Pattern;

.field public static final ZERO:Lorg/threeten/bp/Duration;

.field private static final serialVersionUID:J = 0x2aba9d02d1c4f832L


# instance fields
.field private final nanos:I

.field private final seconds:J


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 99
    new-instance v0, Lorg/threeten/bp/Duration;

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {v0, v2, v3, v1}, Lorg/threeten/bp/Duration;-><init>(JI)V

    sput-object v0, Lorg/threeten/bp/Duration;->ZERO:Lorg/threeten/bp/Duration;

    .line 115
    const-wide/32 v0, 0x3b9aca00

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lorg/threeten/bp/Duration;->BI_NANOS_PER_SECOND:Ljava/math/BigInteger;

    .line 119
    const-string v0, "([-+]?)P(?:([-+]?[0-9]+)D)?(T(?:([-+]?[0-9]+)H)?(?:([-+]?[0-9]+)M)?(?:([-+]?[0-9]+)(?:[.,]([0-9]{0,9}))?S)?)?"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/threeten/bp/Duration;->PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method private constructor <init>(JI)V
    .locals 1
    .param p1, "seconds"    # J
    .param p3, "nanos"    # I

    .prologue
    .line 487
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 488
    iput-wide p1, p0, Lorg/threeten/bp/Duration;->seconds:J

    .line 489
    iput p3, p0, Lorg/threeten/bp/Duration;->nanos:I

    .line 490
    return-void
.end method

.method public static between(Lorg/threeten/bp/temporal/Temporal;Lorg/threeten/bp/temporal/Temporal;)Lorg/threeten/bp/Duration;
    .locals 14
    .param p0, "startInclusive"    # Lorg/threeten/bp/temporal/Temporal;
    .param p1, "endExclusive"    # Lorg/threeten/bp/temporal/Temporal;

    .prologue
    const-wide/32 v12, 0x3b9aca00

    const-wide/16 v10, 0x0

    .line 326
    sget-object v1, Lorg/threeten/bp/temporal/ChronoUnit;->SECONDS:Lorg/threeten/bp/temporal/ChronoUnit;

    invoke-interface {p0, p1, v1}, Lorg/threeten/bp/temporal/Temporal;->until(Lorg/threeten/bp/temporal/Temporal;Lorg/threeten/bp/temporal/TemporalUnit;)J

    move-result-wide v4

    .line 327
    .local v4, "secs":J
    const-wide/16 v2, 0x0

    .line 328
    .local v2, "nanos":J
    sget-object v1, Lorg/threeten/bp/temporal/ChronoField;->NANO_OF_SECOND:Lorg/threeten/bp/temporal/ChronoField;

    invoke-interface {p0, v1}, Lorg/threeten/bp/temporal/Temporal;->isSupported(Lorg/threeten/bp/temporal/TemporalField;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lorg/threeten/bp/temporal/ChronoField;->NANO_OF_SECOND:Lorg/threeten/bp/temporal/ChronoField;

    invoke-interface {p1, v1}, Lorg/threeten/bp/temporal/Temporal;->isSupported(Lorg/threeten/bp/temporal/TemporalField;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 330
    :try_start_0
    sget-object v1, Lorg/threeten/bp/temporal/ChronoField;->NANO_OF_SECOND:Lorg/threeten/bp/temporal/ChronoField;

    invoke-interface {p0, v1}, Lorg/threeten/bp/temporal/Temporal;->getLong(Lorg/threeten/bp/temporal/TemporalField;)J

    move-result-wide v6

    .line 331
    .local v6, "startNos":J
    sget-object v1, Lorg/threeten/bp/temporal/ChronoField;->NANO_OF_SECOND:Lorg/threeten/bp/temporal/ChronoField;

    invoke-interface {p1, v1}, Lorg/threeten/bp/temporal/Temporal;->getLong(Lorg/threeten/bp/temporal/TemporalField;)J
    :try_end_0
    .catch Lorg/threeten/bp/DateTimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ArithmeticException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v8

    sub-long v2, v8, v6

    .line 332
    cmp-long v1, v4, v10

    if-lez v1, :cond_1

    cmp-long v1, v2, v10

    if-gez v1, :cond_1

    .line 333
    add-long/2addr v2, v12

    .line 347
    .end local v6    # "startNos":J
    :cond_0
    :goto_0
    invoke-static {v4, v5, v2, v3}, Lorg/threeten/bp/Duration;->ofSeconds(JJ)Lorg/threeten/bp/Duration;

    move-result-object v1

    return-object v1

    .line 334
    .restart local v6    # "startNos":J
    :cond_1
    cmp-long v1, v4, v10

    if-gez v1, :cond_2

    cmp-long v1, v2, v10

    if-lez v1, :cond_2

    .line 335
    sub-long/2addr v2, v12

    goto :goto_0

    .line 336
    :cond_2
    cmp-long v1, v4, v10

    if-nez v1, :cond_0

    cmp-long v1, v2, v10

    if-eqz v1, :cond_0

    .line 338
    :try_start_1
    sget-object v1, Lorg/threeten/bp/temporal/ChronoField;->NANO_OF_SECOND:Lorg/threeten/bp/temporal/ChronoField;

    invoke-interface {p1, v1, v6, v7}, Lorg/threeten/bp/temporal/Temporal;->with(Lorg/threeten/bp/temporal/TemporalField;J)Lorg/threeten/bp/temporal/Temporal;

    move-result-object v0

    .line 339
    .local v0, "adjustedEnd":Lorg/threeten/bp/temporal/Temporal;
    sget-object v1, Lorg/threeten/bp/temporal/ChronoUnit;->SECONDS:Lorg/threeten/bp/temporal/ChronoUnit;

    invoke-interface {p0, v0, v1}, Lorg/threeten/bp/temporal/Temporal;->until(Lorg/threeten/bp/temporal/Temporal;Lorg/threeten/bp/temporal/TemporalUnit;)J
    :try_end_1
    .catch Lorg/threeten/bp/DateTimeException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/ArithmeticException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-wide v4

    goto :goto_0

    .line 343
    .end local v0    # "adjustedEnd":Lorg/threeten/bp/temporal/Temporal;
    .end local v6    # "startNos":J
    :catch_0
    move-exception v1

    goto :goto_0

    .line 341
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method private static create(JI)Lorg/threeten/bp/Duration;
    .locals 4
    .param p0, "seconds"    # J
    .param p2, "nanoAdjustment"    # I

    .prologue
    .line 474
    int-to-long v0, p2

    or-long/2addr v0, p0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 475
    sget-object v0, Lorg/threeten/bp/Duration;->ZERO:Lorg/threeten/bp/Duration;

    .line 477
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lorg/threeten/bp/Duration;

    invoke-direct {v0, p0, p1, p2}, Lorg/threeten/bp/Duration;-><init>(JI)V

    goto :goto_0
.end method

.method private static create(Ljava/math/BigDecimal;)Lorg/threeten/bp/Duration;
    .locals 6
    .param p0, "seconds"    # Ljava/math/BigDecimal;

    .prologue
    const/4 v4, 0x0

    .line 934
    const/16 v2, 0x9

    invoke-virtual {p0, v2}, Ljava/math/BigDecimal;->movePointRight(I)Ljava/math/BigDecimal;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigDecimal;->toBigIntegerExact()Ljava/math/BigInteger;

    move-result-object v1

    .line 935
    .local v1, "nanos":Ljava/math/BigInteger;
    sget-object v2, Lorg/threeten/bp/Duration;->BI_NANOS_PER_SECOND:Ljava/math/BigInteger;

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->divideAndRemainder(Ljava/math/BigInteger;)[Ljava/math/BigInteger;

    move-result-object v0

    .line 936
    .local v0, "divRem":[Ljava/math/BigInteger;
    aget-object v2, v0, v4

    invoke-virtual {v2}, Ljava/math/BigInteger;->bitLength()I

    move-result v2

    const/16 v3, 0x3f

    if-le v2, v3, :cond_0

    .line 937
    new-instance v2, Ljava/lang/ArithmeticException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exceeds capacity of Duration: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 939
    :cond_0
    aget-object v2, v0, v4

    invoke-virtual {v2}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v2

    const/4 v4, 0x1

    aget-object v4, v0, v4

    invoke-virtual {v4}, Ljava/math/BigInteger;->intValue()I

    move-result v4

    int-to-long v4, v4

    invoke-static {v2, v3, v4, v5}, Lorg/threeten/bp/Duration;->ofSeconds(JJ)Lorg/threeten/bp/Duration;

    move-result-object v2

    return-object v2
.end method

.method private static create(ZJJJJI)Lorg/threeten/bp/Duration;
    .locals 5
    .param p0, "negate"    # Z
    .param p1, "daysAsSecs"    # J
    .param p3, "hoursAsSecs"    # J
    .param p5, "minsAsSecs"    # J
    .param p7, "secs"    # J
    .param p9, "nanos"    # I

    .prologue
    .line 459
    invoke-static {p5, p6, p7, p8}, Lorg/threeten/bp/jdk8/Jdk8Methods;->safeAdd(JJ)J

    move-result-wide v2

    invoke-static {p3, p4, v2, v3}, Lorg/threeten/bp/jdk8/Jdk8Methods;->safeAdd(JJ)J

    move-result-wide v2

    invoke-static {p1, p2, v2, v3}, Lorg/threeten/bp/jdk8/Jdk8Methods;->safeAdd(JJ)J

    move-result-wide v0

    .line 460
    .local v0, "seconds":J
    if-eqz p0, :cond_0

    .line 461
    int-to-long v2, p9

    invoke-static {v0, v1, v2, v3}, Lorg/threeten/bp/Duration;->ofSeconds(JJ)Lorg/threeten/bp/Duration;

    move-result-object v2

    invoke-virtual {v2}, Lorg/threeten/bp/Duration;->negated()Lorg/threeten/bp/Duration;

    move-result-object v2

    .line 463
    :goto_0
    return-object v2

    :cond_0
    int-to-long v2, p9

    invoke-static {v0, v1, v2, v3}, Lorg/threeten/bp/Duration;->ofSeconds(JJ)Lorg/threeten/bp/Duration;

    move-result-object v2

    goto :goto_0
.end method

.method public static from(Lorg/threeten/bp/temporal/TemporalAmount;)Lorg/threeten/bp/Duration;
    .locals 6
    .param p0, "amount"    # Lorg/threeten/bp/temporal/TemporalAmount;

    .prologue
    .line 298
    const-string v3, "amount"

    invoke-static {p0, v3}, Lorg/threeten/bp/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 299
    sget-object v0, Lorg/threeten/bp/Duration;->ZERO:Lorg/threeten/bp/Duration;

    .line 300
    .local v0, "duration":Lorg/threeten/bp/Duration;
    invoke-interface {p0}, Lorg/threeten/bp/temporal/TemporalAmount;->getUnits()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/threeten/bp/temporal/TemporalUnit;

    .line 301
    .local v2, "unit":Lorg/threeten/bp/temporal/TemporalUnit;
    invoke-interface {p0, v2}, Lorg/threeten/bp/temporal/TemporalAmount;->get(Lorg/threeten/bp/temporal/TemporalUnit;)J

    move-result-wide v4

    invoke-virtual {v0, v4, v5, v2}, Lorg/threeten/bp/Duration;->plus(JLorg/threeten/bp/temporal/TemporalUnit;)Lorg/threeten/bp/Duration;

    move-result-object v0

    goto :goto_0

    .line 303
    .end local v2    # "unit":Lorg/threeten/bp/temporal/TemporalUnit;
    :cond_0
    return-object v0
.end method

.method public static of(JLorg/threeten/bp/temporal/TemporalUnit;)Lorg/threeten/bp/Duration;
    .locals 2
    .param p0, "amount"    # J
    .param p2, "unit"    # Lorg/threeten/bp/temporal/TemporalUnit;

    .prologue
    .line 275
    sget-object v0, Lorg/threeten/bp/Duration;->ZERO:Lorg/threeten/bp/Duration;

    invoke-virtual {v0, p0, p1, p2}, Lorg/threeten/bp/Duration;->plus(JLorg/threeten/bp/temporal/TemporalUnit;)Lorg/threeten/bp/Duration;

    move-result-object v0

    return-object v0
.end method

.method public static ofDays(J)Lorg/threeten/bp/Duration;
    .locals 4
    .param p0, "days"    # J

    .prologue
    .line 147
    const v0, 0x15180

    invoke-static {p0, p1, v0}, Lorg/threeten/bp/jdk8/Jdk8Methods;->safeMultiply(JI)J

    move-result-wide v0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lorg/threeten/bp/Duration;->create(JI)Lorg/threeten/bp/Duration;

    move-result-object v0

    return-object v0
.end method

.method public static ofHours(J)Lorg/threeten/bp/Duration;
    .locals 4
    .param p0, "hours"    # J

    .prologue
    .line 162
    const/16 v0, 0xe10

    invoke-static {p0, p1, v0}, Lorg/threeten/bp/jdk8/Jdk8Methods;->safeMultiply(JI)J

    move-result-wide v0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lorg/threeten/bp/Duration;->create(JI)Lorg/threeten/bp/Duration;

    move-result-object v0

    return-object v0
.end method

.method public static ofMillis(J)Lorg/threeten/bp/Duration;
    .locals 6
    .param p0, "millis"    # J

    .prologue
    const-wide/16 v4, 0x3e8

    .line 228
    div-long v2, p0, v4

    .line 229
    .local v2, "secs":J
    rem-long v4, p0, v4

    long-to-int v0, v4

    .line 230
    .local v0, "mos":I
    if-gez v0, :cond_0

    .line 231
    add-int/lit16 v0, v0, 0x3e8

    .line 232
    const-wide/16 v4, 0x1

    sub-long/2addr v2, v4

    .line 234
    :cond_0
    const v1, 0xf4240

    mul-int/2addr v1, v0

    invoke-static {v2, v3, v1}, Lorg/threeten/bp/Duration;->create(JI)Lorg/threeten/bp/Duration;

    move-result-object v1

    return-object v1
.end method

.method public static ofMinutes(J)Lorg/threeten/bp/Duration;
    .locals 4
    .param p0, "minutes"    # J

    .prologue
    .line 177
    const/16 v0, 0x3c

    invoke-static {p0, p1, v0}, Lorg/threeten/bp/jdk8/Jdk8Methods;->safeMultiply(JI)J

    move-result-wide v0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lorg/threeten/bp/Duration;->create(JI)Lorg/threeten/bp/Duration;

    move-result-object v0

    return-object v0
.end method

.method public static ofNanos(J)Lorg/threeten/bp/Duration;
    .locals 6
    .param p0, "nanos"    # J

    .prologue
    const-wide/32 v4, 0x3b9aca00

    .line 246
    div-long v2, p0, v4

    .line 247
    .local v2, "secs":J
    rem-long v4, p0, v4

    long-to-int v0, v4

    .line 248
    .local v0, "nos":I
    if-gez v0, :cond_0

    .line 249
    const v1, 0x3b9aca00

    add-int/2addr v0, v1

    .line 250
    const-wide/16 v4, 0x1

    sub-long/2addr v2, v4

    .line 252
    :cond_0
    invoke-static {v2, v3, v0}, Lorg/threeten/bp/Duration;->create(JI)Lorg/threeten/bp/Duration;

    move-result-object v1

    return-object v1
.end method

.method public static ofSeconds(J)Lorg/threeten/bp/Duration;
    .locals 2
    .param p0, "seconds"    # J

    .prologue
    .line 190
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/threeten/bp/Duration;->create(JI)Lorg/threeten/bp/Duration;

    move-result-object v0

    return-object v0
.end method

.method public static ofSeconds(JJ)Lorg/threeten/bp/Duration;
    .locals 6
    .param p0, "seconds"    # J
    .param p2, "nanoAdjustment"    # J

    .prologue
    .line 213
    const-wide/32 v4, 0x3b9aca00

    invoke-static {p2, p3, v4, v5}, Lorg/threeten/bp/jdk8/Jdk8Methods;->floorDiv(JJ)J

    move-result-wide v4

    invoke-static {p0, p1, v4, v5}, Lorg/threeten/bp/jdk8/Jdk8Methods;->safeAdd(JJ)J

    move-result-wide v2

    .line 214
    .local v2, "secs":J
    const v1, 0x3b9aca00

    invoke-static {p2, p3, v1}, Lorg/threeten/bp/jdk8/Jdk8Methods;->floorMod(JI)I

    move-result v0

    .line 215
    .local v0, "nos":I
    invoke-static {v2, v3, v0}, Lorg/threeten/bp/Duration;->create(JI)Lorg/threeten/bp/Duration;

    move-result-object v1

    return-object v1
.end method

.method public static parse(Ljava/lang/CharSequence;)Lorg/threeten/bp/Duration;
    .locals 25
    .param p0, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 396
    const-string v22, "text"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Lorg/threeten/bp/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 397
    sget-object v22, Lorg/threeten/bp/Duration;->PATTERN:Ljava/util/regex/Pattern;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v18

    .line 398
    .local v18, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual/range {v18 .. v18}, Ljava/util/regex/Matcher;->matches()Z

    move-result v22

    if-eqz v22, :cond_3

    .line 400
    const-string v22, "T"

    const/16 v23, 0x3

    move-object/from16 v0, v18

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_3

    .line 401
    const-string v22, "-"

    const/16 v23, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 402
    .local v5, "negate":Z
    const/16 v22, 0x2

    move-object/from16 v0, v18

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    .line 403
    .local v4, "dayMatch":Ljava/lang/String;
    const/16 v22, 0x4

    move-object/from16 v0, v18

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v17

    .line 404
    .local v17, "hourMatch":Ljava/lang/String;
    const/16 v22, 0x5

    move-object/from16 v0, v18

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v19

    .line 405
    .local v19, "minuteMatch":Ljava/lang/String;
    const/16 v22, 0x6

    move-object/from16 v0, v18

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v21

    .line 406
    .local v21, "secondMatch":Ljava/lang/String;
    const/16 v22, 0x7

    move-object/from16 v0, v18

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v16

    .line 407
    .local v16, "fractionMatch":Ljava/lang/String;
    if-nez v4, :cond_0

    if-nez v17, :cond_0

    if-nez v19, :cond_0

    if-eqz v21, :cond_3

    .line 408
    :cond_0
    const v22, 0x15180

    const-string v23, "days"

    move-object/from16 v0, p0

    move/from16 v1, v22

    move-object/from16 v2, v23

    invoke-static {v0, v4, v1, v2}, Lorg/threeten/bp/Duration;->parseNumber(Ljava/lang/CharSequence;Ljava/lang/String;ILjava/lang/String;)J

    move-result-wide v6

    .line 409
    .local v6, "daysAsSecs":J
    const/16 v22, 0xe10

    const-string v23, "hours"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v22

    move-object/from16 v3, v23

    invoke-static {v0, v1, v2, v3}, Lorg/threeten/bp/Duration;->parseNumber(Ljava/lang/CharSequence;Ljava/lang/String;ILjava/lang/String;)J

    move-result-wide v8

    .line 410
    .local v8, "hoursAsSecs":J
    const/16 v22, 0x3c

    const-string v23, "minutes"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, v22

    move-object/from16 v3, v23

    invoke-static {v0, v1, v2, v3}, Lorg/threeten/bp/Duration;->parseNumber(Ljava/lang/CharSequence;Ljava/lang/String;ILjava/lang/String;)J

    move-result-wide v10

    .line 411
    .local v10, "minsAsSecs":J
    const/16 v22, 0x1

    const-string v23, "seconds"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move/from16 v2, v22

    move-object/from16 v3, v23

    invoke-static {v0, v1, v2, v3}, Lorg/threeten/bp/Duration;->parseNumber(Ljava/lang/CharSequence;Ljava/lang/String;ILjava/lang/String;)J

    move-result-wide v12

    .line 412
    .local v12, "seconds":J
    if-eqz v21, :cond_1

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->charAt(I)C

    move-result v22

    const/16 v23, 0x2d

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_1

    const/16 v20, 0x1

    .line 413
    .local v20, "negativeSecs":Z
    :goto_0
    if-eqz v20, :cond_2

    const/16 v22, -0x1

    :goto_1
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move/from16 v2, v22

    invoke-static {v0, v1, v2}, Lorg/threeten/bp/Duration;->parseFraction(Ljava/lang/CharSequence;Ljava/lang/String;I)I

    move-result v14

    .line 415
    .local v14, "nanos":I
    :try_start_0
    invoke-static/range {v5 .. v14}, Lorg/threeten/bp/Duration;->create(ZJJJJI)Lorg/threeten/bp/Duration;
    :try_end_0
    .catch Ljava/lang/ArithmeticException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v22

    return-object v22

    .line 412
    .end local v14    # "nanos":I
    .end local v20    # "negativeSecs":Z
    :cond_1
    const/16 v20, 0x0

    goto :goto_0

    .line 413
    .restart local v20    # "negativeSecs":Z
    :cond_2
    const/16 v22, 0x1

    goto :goto_1

    .line 416
    .restart local v14    # "nanos":I
    :catch_0
    move-exception v15

    .line 417
    .local v15, "ex":Ljava/lang/ArithmeticException;
    new-instance v22, Lorg/threeten/bp/format/DateTimeParseException;

    const-string v23, "Text cannot be parsed to a Duration: overflow"

    const/16 v24, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object/from16 v2, p0

    move/from16 v3, v24

    invoke-direct {v0, v1, v2, v3}, Lorg/threeten/bp/format/DateTimeParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    move-object/from16 v0, v22

    invoke-virtual {v0, v15}, Lorg/threeten/bp/format/DateTimeParseException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v22

    check-cast v22, Lorg/threeten/bp/format/DateTimeParseException;

    throw v22

    .line 422
    .end local v4    # "dayMatch":Ljava/lang/String;
    .end local v5    # "negate":Z
    .end local v6    # "daysAsSecs":J
    .end local v8    # "hoursAsSecs":J
    .end local v10    # "minsAsSecs":J
    .end local v12    # "seconds":J
    .end local v14    # "nanos":I
    .end local v15    # "ex":Ljava/lang/ArithmeticException;
    .end local v16    # "fractionMatch":Ljava/lang/String;
    .end local v17    # "hourMatch":Ljava/lang/String;
    .end local v19    # "minuteMatch":Ljava/lang/String;
    .end local v20    # "negativeSecs":Z
    .end local v21    # "secondMatch":Ljava/lang/String;
    :cond_3
    new-instance v22, Lorg/threeten/bp/format/DateTimeParseException;

    const-string v23, "Text cannot be parsed to a Duration"

    const/16 v24, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object/from16 v2, p0

    move/from16 v3, v24

    invoke-direct {v0, v1, v2, v3}, Lorg/threeten/bp/format/DateTimeParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    throw v22
.end method

.method private static parseFraction(Ljava/lang/CharSequence;Ljava/lang/String;I)I
    .locals 5
    .param p0, "text"    # Ljava/lang/CharSequence;
    .param p1, "parsed"    # Ljava/lang/String;
    .param p2, "negate"    # I

    .prologue
    const/4 v1, 0x0

    .line 445
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 450
    :cond_0
    :goto_0
    return v1

    .line 449
    :cond_1
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "000000000"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/16 v4, 0x9

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 450
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ArithmeticException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    mul-int/2addr v1, p2

    goto :goto_0

    .line 451
    :catch_0
    move-exception v0

    .line 452
    .local v0, "ex":Ljava/lang/NumberFormatException;
    new-instance v2, Lorg/threeten/bp/format/DateTimeParseException;

    const-string v3, "Text cannot be parsed to a Duration: fraction"

    invoke-direct {v2, v3, p0, v1}, Lorg/threeten/bp/format/DateTimeParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    invoke-virtual {v2, v0}, Lorg/threeten/bp/format/DateTimeParseException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v1

    check-cast v1, Lorg/threeten/bp/format/DateTimeParseException;

    throw v1

    .line 453
    .end local v0    # "ex":Ljava/lang/NumberFormatException;
    :catch_1
    move-exception v0

    .line 454
    .local v0, "ex":Ljava/lang/ArithmeticException;
    new-instance v2, Lorg/threeten/bp/format/DateTimeParseException;

    const-string v3, "Text cannot be parsed to a Duration: fraction"

    invoke-direct {v2, v3, p0, v1}, Lorg/threeten/bp/format/DateTimeParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    invoke-virtual {v2, v0}, Lorg/threeten/bp/format/DateTimeParseException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v1

    check-cast v1, Lorg/threeten/bp/format/DateTimeParseException;

    throw v1
.end method

.method private static parseNumber(Ljava/lang/CharSequence;Ljava/lang/String;ILjava/lang/String;)J
    .locals 7
    .param p0, "text"    # Ljava/lang/CharSequence;
    .param p1, "parsed"    # Ljava/lang/String;
    .param p2, "multiplier"    # I
    .param p3, "errorText"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 427
    if-nez p1, :cond_0

    .line 428
    const-wide/16 v4, 0x0

    .line 435
    :goto_0
    return-wide v4

    .line 431
    :cond_0
    :try_start_0
    const-string v1, "+"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 432
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 434
    :cond_1
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 435
    .local v2, "val":J
    invoke-static {v2, v3, p2}, Lorg/threeten/bp/jdk8/Jdk8Methods;->safeMultiply(JI)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ArithmeticException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-wide v4

    goto :goto_0

    .line 436
    .end local v2    # "val":J
    :catch_0
    move-exception v0

    .line 437
    .local v0, "ex":Ljava/lang/NumberFormatException;
    new-instance v1, Lorg/threeten/bp/format/DateTimeParseException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Text cannot be parsed to a Duration: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4, p0, v6}, Lorg/threeten/bp/format/DateTimeParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    invoke-virtual {v1, v0}, Lorg/threeten/bp/format/DateTimeParseException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v1

    check-cast v1, Lorg/threeten/bp/format/DateTimeParseException;

    throw v1

    .line 438
    .end local v0    # "ex":Ljava/lang/NumberFormatException;
    :catch_1
    move-exception v0

    .line 439
    .local v0, "ex":Ljava/lang/ArithmeticException;
    new-instance v1, Lorg/threeten/bp/format/DateTimeParseException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Text cannot be parsed to a Duration: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4, p0, v6}, Lorg/threeten/bp/format/DateTimeParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    invoke-virtual {v1, v0}, Lorg/threeten/bp/format/DateTimeParseException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v1

    check-cast v1, Lorg/threeten/bp/format/DateTimeParseException;

    throw v1
.end method

.method private plus(JJ)Lorg/threeten/bp/Duration;
    .locals 11
    .param p1, "secondsToAdd"    # J
    .param p3, "nanosToAdd"    # J

    .prologue
    const-wide/32 v8, 0x3b9aca00

    .line 749
    or-long v4, p1, p3

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_0

    .line 756
    .end local p0    # "this":Lorg/threeten/bp/Duration;
    :goto_0
    return-object p0

    .line 752
    .restart local p0    # "this":Lorg/threeten/bp/Duration;
    :cond_0
    iget-wide v4, p0, Lorg/threeten/bp/Duration;->seconds:J

    invoke-static {v4, v5, p1, p2}, Lorg/threeten/bp/jdk8/Jdk8Methods;->safeAdd(JJ)J

    move-result-wide v0

    .line 753
    .local v0, "epochSec":J
    div-long v4, p3, v8

    invoke-static {v0, v1, v4, v5}, Lorg/threeten/bp/jdk8/Jdk8Methods;->safeAdd(JJ)J

    move-result-wide v0

    .line 754
    rem-long/2addr p3, v8

    .line 755
    iget v4, p0, Lorg/threeten/bp/Duration;->nanos:I

    int-to-long v4, v4

    add-long v2, v4, p3

    .line 756
    .local v2, "nanoAdjustment":J
    invoke-static {v0, v1, v2, v3}, Lorg/threeten/bp/Duration;->ofSeconds(JJ)Lorg/threeten/bp/Duration;

    move-result-object p0

    goto :goto_0
.end method

.method static readExternal(Ljava/io/DataInput;)Lorg/threeten/bp/Duration;
    .locals 6
    .param p0, "in"    # Ljava/io/DataInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1260
    invoke-interface {p0}, Ljava/io/DataInput;->readLong()J

    move-result-wide v2

    .line 1261
    .local v2, "seconds":J
    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    move-result v0

    .line 1262
    .local v0, "nanos":I
    int-to-long v4, v0

    invoke-static {v2, v3, v4, v5}, Lorg/threeten/bp/Duration;->ofSeconds(JJ)Lorg/threeten/bp/Duration;

    move-result-object v1

    return-object v1
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .prologue
    .line 1251
    new-instance v0, Ljava/io/InvalidObjectException;

    const-string v1, "Deserialization via serialization delegate"

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private toSeconds()Ljava/math/BigDecimal;
    .locals 4

    .prologue
    .line 923
    iget-wide v0, p0, Lorg/threeten/bp/Duration;->seconds:J

    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v0

    iget v1, p0, Lorg/threeten/bp/Duration;->nanos:I

    int-to-long v2, v1

    const/16 v1, 0x9

    invoke-static {v2, v3, v1}, Ljava/math/BigDecimal;->valueOf(JI)Ljava/math/BigDecimal;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/math/BigDecimal;->add(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v0

    return-object v0
.end method

.method private writeReplace()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 1242
    new-instance v0, Lorg/threeten/bp/Ser;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Lorg/threeten/bp/Ser;-><init>(BLjava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public abs()Lorg/threeten/bp/Duration;
    .locals 1

    .prologue
    .line 970
    invoke-virtual {p0}, Lorg/threeten/bp/Duration;->isNegative()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/threeten/bp/Duration;->negated()Lorg/threeten/bp/Duration;

    move-result-object p0

    .end local p0    # "this":Lorg/threeten/bp/Duration;
    :cond_0
    return-object p0
.end method

.method public addTo(Lorg/threeten/bp/temporal/Temporal;)Lorg/threeten/bp/temporal/Temporal;
    .locals 4
    .param p1, "temporal"    # Lorg/threeten/bp/temporal/Temporal;

    .prologue
    .line 1000
    iget-wide v0, p0, Lorg/threeten/bp/Duration;->seconds:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 1001
    iget-wide v0, p0, Lorg/threeten/bp/Duration;->seconds:J

    sget-object v2, Lorg/threeten/bp/temporal/ChronoUnit;->SECONDS:Lorg/threeten/bp/temporal/ChronoUnit;

    invoke-interface {p1, v0, v1, v2}, Lorg/threeten/bp/temporal/Temporal;->plus(JLorg/threeten/bp/temporal/TemporalUnit;)Lorg/threeten/bp/temporal/Temporal;

    move-result-object p1

    .line 1003
    :cond_0
    iget v0, p0, Lorg/threeten/bp/Duration;->nanos:I

    if-eqz v0, :cond_1

    .line 1004
    iget v0, p0, Lorg/threeten/bp/Duration;->nanos:I

    int-to-long v0, v0

    sget-object v2, Lorg/threeten/bp/temporal/ChronoUnit;->NANOS:Lorg/threeten/bp/temporal/ChronoUnit;

    invoke-interface {p1, v0, v1, v2}, Lorg/threeten/bp/temporal/Temporal;->plus(JLorg/threeten/bp/temporal/TemporalUnit;)Lorg/threeten/bp/temporal/Temporal;

    move-result-object p1

    .line 1006
    :cond_1
    return-object p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 93
    check-cast p1, Lorg/threeten/bp/Duration;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/threeten/bp/Duration;->compareTo(Lorg/threeten/bp/Duration;)I

    move-result v0

    return v0
.end method

.method public compareTo(Lorg/threeten/bp/Duration;)I
    .locals 6
    .param p1, "otherDuration"    # Lorg/threeten/bp/Duration;

    .prologue
    .line 1134
    iget-wide v2, p0, Lorg/threeten/bp/Duration;->seconds:J

    iget-wide v4, p1, Lorg/threeten/bp/Duration;->seconds:J

    invoke-static {v2, v3, v4, v5}, Lorg/threeten/bp/jdk8/Jdk8Methods;->compareLongs(JJ)I

    move-result v0

    .line 1135
    .local v0, "cmp":I
    if-eqz v0, :cond_0

    .line 1138
    .end local v0    # "cmp":I
    :goto_0
    return v0

    .restart local v0    # "cmp":I
    :cond_0
    iget v1, p0, Lorg/threeten/bp/Duration;->nanos:I

    iget v2, p1, Lorg/threeten/bp/Duration;->nanos:I

    sub-int v0, v1, v2

    goto :goto_0
.end method

.method public dividedBy(J)Lorg/threeten/bp/Duration;
    .locals 3
    .param p1, "divisor"    # J

    .prologue
    .line 907
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 908
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "Cannot divide by zero"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 910
    :cond_0
    const-wide/16 v0, 0x1

    cmp-long v0, p1, v0

    if-nez v0, :cond_1

    .line 913
    .end local p0    # "this":Lorg/threeten/bp/Duration;
    :goto_0
    return-object p0

    .restart local p0    # "this":Lorg/threeten/bp/Duration;
    :cond_1
    invoke-direct {p0}, Lorg/threeten/bp/Duration;->toSeconds()Ljava/math/BigDecimal;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v1

    sget-object v2, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    invoke-virtual {v0, v1, v2}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;Ljava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object v0

    invoke-static {v0}, Lorg/threeten/bp/Duration;->create(Ljava/math/BigDecimal;)Lorg/threeten/bp/Duration;

    move-result-object p0

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "otherDuration"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1152
    if-ne p0, p1, :cond_1

    .line 1160
    :cond_0
    :goto_0
    return v1

    .line 1155
    :cond_1
    instance-of v3, p1, Lorg/threeten/bp/Duration;

    if-eqz v3, :cond_3

    move-object v0, p1

    .line 1156
    check-cast v0, Lorg/threeten/bp/Duration;

    .line 1157
    .local v0, "other":Lorg/threeten/bp/Duration;
    iget-wide v4, p0, Lorg/threeten/bp/Duration;->seconds:J

    iget-wide v6, v0, Lorg/threeten/bp/Duration;->seconds:J

    cmp-long v3, v4, v6

    if-nez v3, :cond_2

    iget v3, p0, Lorg/threeten/bp/Duration;->nanos:I

    iget v4, v0, Lorg/threeten/bp/Duration;->nanos:I

    if-eq v3, v4, :cond_0

    :cond_2
    move v1, v2

    goto :goto_0

    .end local v0    # "other":Lorg/threeten/bp/Duration;
    :cond_3
    move v1, v2

    .line 1160
    goto :goto_0
.end method

.method public get(Lorg/threeten/bp/temporal/TemporalUnit;)J
    .locals 3
    .param p1, "unit"    # Lorg/threeten/bp/temporal/TemporalUnit;

    .prologue
    .line 500
    sget-object v0, Lorg/threeten/bp/temporal/ChronoUnit;->SECONDS:Lorg/threeten/bp/temporal/ChronoUnit;

    if-ne p1, v0, :cond_0

    .line 501
    iget-wide v0, p0, Lorg/threeten/bp/Duration;->seconds:J

    .line 504
    :goto_0
    return-wide v0

    .line 503
    :cond_0
    sget-object v0, Lorg/threeten/bp/temporal/ChronoUnit;->NANOS:Lorg/threeten/bp/temporal/ChronoUnit;

    if-ne p1, v0, :cond_1

    .line 504
    iget v0, p0, Lorg/threeten/bp/Duration;->nanos:I

    int-to-long v0, v0

    goto :goto_0

    .line 506
    :cond_1
    new-instance v0, Lorg/threeten/bp/temporal/UnsupportedTemporalTypeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported unit: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/threeten/bp/temporal/UnsupportedTemporalTypeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getNano()I
    .locals 1

    .prologue
    .line 570
    iget v0, p0, Lorg/threeten/bp/Duration;->nanos:I

    return v0
.end method

.method public getSeconds()J
    .locals 2

    .prologue
    .line 552
    iget-wide v0, p0, Lorg/threeten/bp/Duration;->seconds:J

    return-wide v0
.end method

.method public getUnits()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/threeten/bp/temporal/TemporalUnit;",
            ">;"
        }
    .end annotation

    .prologue
    .line 495
    const/4 v0, 0x2

    new-array v0, v0, [Lorg/threeten/bp/temporal/ChronoUnit;

    const/4 v1, 0x0

    sget-object v2, Lorg/threeten/bp/temporal/ChronoUnit;->SECONDS:Lorg/threeten/bp/temporal/ChronoUnit;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lorg/threeten/bp/temporal/ChronoUnit;->NANOS:Lorg/threeten/bp/temporal/ChronoUnit;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    .line 1170
    iget-wide v0, p0, Lorg/threeten/bp/Duration;->seconds:J

    iget-wide v2, p0, Lorg/threeten/bp/Duration;->seconds:J

    const/16 v4, 0x20

    ushr-long/2addr v2, v4

    xor-long/2addr v0, v2

    long-to-int v0, v0

    iget v1, p0, Lorg/threeten/bp/Duration;->nanos:I

    mul-int/lit8 v1, v1, 0x33

    add-int/2addr v0, v1

    return v0
.end method

.method public isNegative()Z
    .locals 4

    .prologue
    .line 533
    iget-wide v0, p0, Lorg/threeten/bp/Duration;->seconds:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isZero()Z
    .locals 4

    .prologue
    .line 520
    iget-wide v0, p0, Lorg/threeten/bp/Duration;->seconds:J

    iget v2, p0, Lorg/threeten/bp/Duration;->nanos:I

    int-to-long v2, v2

    or-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public minus(JLorg/threeten/bp/temporal/TemporalUnit;)Lorg/threeten/bp/Duration;
    .locals 5
    .param p1, "amountToSubtract"    # J
    .param p3, "unit"    # Lorg/threeten/bp/temporal/TemporalUnit;

    .prologue
    .line 794
    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1, p3}, Lorg/threeten/bp/Duration;->plus(JLorg/threeten/bp/temporal/TemporalUnit;)Lorg/threeten/bp/Duration;

    move-result-object v0

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v2, v3, p3}, Lorg/threeten/bp/Duration;->plus(JLorg/threeten/bp/temporal/TemporalUnit;)Lorg/threeten/bp/Duration;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    neg-long v0, p1

    invoke-virtual {p0, v0, v1, p3}, Lorg/threeten/bp/Duration;->plus(JLorg/threeten/bp/temporal/TemporalUnit;)Lorg/threeten/bp/Duration;

    move-result-object v0

    goto :goto_0
.end method

.method public minus(Lorg/threeten/bp/Duration;)Lorg/threeten/bp/Duration;
    .locals 8
    .param p1, "duration"    # Lorg/threeten/bp/Duration;

    .prologue
    .line 770
    invoke-virtual {p1}, Lorg/threeten/bp/Duration;->getSeconds()J

    move-result-wide v2

    .line 771
    .local v2, "secsToSubtract":J
    invoke-virtual {p1}, Lorg/threeten/bp/Duration;->getNano()I

    move-result v0

    .line 772
    .local v0, "nanosToSubtract":I
    const-wide/high16 v4, -0x8000000000000000L

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    .line 773
    const-wide v4, 0x7fffffffffffffffL

    neg-int v1, v0

    int-to-long v6, v1

    invoke-direct {p0, v4, v5, v6, v7}, Lorg/threeten/bp/Duration;->plus(JJ)Lorg/threeten/bp/Duration;

    move-result-object v1

    const-wide/16 v4, 0x1

    const-wide/16 v6, 0x0

    invoke-direct {v1, v4, v5, v6, v7}, Lorg/threeten/bp/Duration;->plus(JJ)Lorg/threeten/bp/Duration;

    move-result-object v1

    .line 775
    :goto_0
    return-object v1

    :cond_0
    neg-long v4, v2

    neg-int v1, v0

    int-to-long v6, v1

    invoke-direct {p0, v4, v5, v6, v7}, Lorg/threeten/bp/Duration;->plus(JJ)Lorg/threeten/bp/Duration;

    move-result-object v1

    goto :goto_0
.end method

.method public minusDays(J)Lorg/threeten/bp/Duration;
    .locals 5
    .param p1, "daysToSubtract"    # J

    .prologue
    .line 808
    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Lorg/threeten/bp/Duration;->plusDays(J)Lorg/threeten/bp/Duration;

    move-result-object v0

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v2, v3}, Lorg/threeten/bp/Duration;->plusDays(J)Lorg/threeten/bp/Duration;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    neg-long v0, p1

    invoke-virtual {p0, v0, v1}, Lorg/threeten/bp/Duration;->plusDays(J)Lorg/threeten/bp/Duration;

    move-result-object v0

    goto :goto_0
.end method

.method public minusHours(J)Lorg/threeten/bp/Duration;
    .locals 5
    .param p1, "hoursToSubtract"    # J

    .prologue
    .line 821
    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Lorg/threeten/bp/Duration;->plusHours(J)Lorg/threeten/bp/Duration;

    move-result-object v0

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v2, v3}, Lorg/threeten/bp/Duration;->plusHours(J)Lorg/threeten/bp/Duration;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    neg-long v0, p1

    invoke-virtual {p0, v0, v1}, Lorg/threeten/bp/Duration;->plusHours(J)Lorg/threeten/bp/Duration;

    move-result-object v0

    goto :goto_0
.end method

.method public minusMillis(J)Lorg/threeten/bp/Duration;
    .locals 5
    .param p1, "millisToSubtract"    # J

    .prologue
    .line 860
    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Lorg/threeten/bp/Duration;->plusMillis(J)Lorg/threeten/bp/Duration;

    move-result-object v0

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v2, v3}, Lorg/threeten/bp/Duration;->plusMillis(J)Lorg/threeten/bp/Duration;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    neg-long v0, p1

    invoke-virtual {p0, v0, v1}, Lorg/threeten/bp/Duration;->plusMillis(J)Lorg/threeten/bp/Duration;

    move-result-object v0

    goto :goto_0
.end method

.method public minusMinutes(J)Lorg/threeten/bp/Duration;
    .locals 5
    .param p1, "minutesToSubtract"    # J

    .prologue
    .line 834
    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Lorg/threeten/bp/Duration;->plusMinutes(J)Lorg/threeten/bp/Duration;

    move-result-object v0

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v2, v3}, Lorg/threeten/bp/Duration;->plusMinutes(J)Lorg/threeten/bp/Duration;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    neg-long v0, p1

    invoke-virtual {p0, v0, v1}, Lorg/threeten/bp/Duration;->plusMinutes(J)Lorg/threeten/bp/Duration;

    move-result-object v0

    goto :goto_0
.end method

.method public minusNanos(J)Lorg/threeten/bp/Duration;
    .locals 5
    .param p1, "nanosToSubtract"    # J

    .prologue
    .line 873
    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Lorg/threeten/bp/Duration;->plusNanos(J)Lorg/threeten/bp/Duration;

    move-result-object v0

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v2, v3}, Lorg/threeten/bp/Duration;->plusNanos(J)Lorg/threeten/bp/Duration;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    neg-long v0, p1

    invoke-virtual {p0, v0, v1}, Lorg/threeten/bp/Duration;->plusNanos(J)Lorg/threeten/bp/Duration;

    move-result-object v0

    goto :goto_0
.end method

.method public minusSeconds(J)Lorg/threeten/bp/Duration;
    .locals 5
    .param p1, "secondsToSubtract"    # J

    .prologue
    .line 847
    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Lorg/threeten/bp/Duration;->plusSeconds(J)Lorg/threeten/bp/Duration;

    move-result-object v0

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v2, v3}, Lorg/threeten/bp/Duration;->plusSeconds(J)Lorg/threeten/bp/Duration;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    neg-long v0, p1

    invoke-virtual {p0, v0, v1}, Lorg/threeten/bp/Duration;->plusSeconds(J)Lorg/threeten/bp/Duration;

    move-result-object v0

    goto :goto_0
.end method

.method public multipliedBy(J)Lorg/threeten/bp/Duration;
    .locals 3
    .param p1, "multiplicand"    # J

    .prologue
    .line 887
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_1

    .line 888
    sget-object p0, Lorg/threeten/bp/Duration;->ZERO:Lorg/threeten/bp/Duration;

    .line 893
    .end local p0    # "this":Lorg/threeten/bp/Duration;
    :cond_0
    :goto_0
    return-object p0

    .line 890
    .restart local p0    # "this":Lorg/threeten/bp/Duration;
    :cond_1
    const-wide/16 v0, 0x1

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    .line 893
    invoke-direct {p0}, Lorg/threeten/bp/Duration;->toSeconds()Ljava/math/BigDecimal;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v0

    invoke-static {v0}, Lorg/threeten/bp/Duration;->create(Ljava/math/BigDecimal;)Lorg/threeten/bp/Duration;

    move-result-object p0

    goto :goto_0
.end method

.method public negated()Lorg/threeten/bp/Duration;
    .locals 2

    .prologue
    .line 955
    const-wide/16 v0, -0x1

    invoke-virtual {p0, v0, v1}, Lorg/threeten/bp/Duration;->multipliedBy(J)Lorg/threeten/bp/Duration;

    move-result-object v0

    return-object v0
.end method

.method public plus(JLorg/threeten/bp/temporal/TemporalUnit;)Lorg/threeten/bp/Duration;
    .locals 11
    .param p1, "amountToAdd"    # J
    .param p3, "unit"    # Lorg/threeten/bp/temporal/TemporalUnit;

    .prologue
    const-wide/32 v8, 0x3b9aca00

    const-wide/16 v6, 0x3e8

    const-wide/16 v4, 0x0

    .line 636
    const-string v1, "unit"

    invoke-static {p3, v1}, Lorg/threeten/bp/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 637
    sget-object v1, Lorg/threeten/bp/temporal/ChronoUnit;->DAYS:Lorg/threeten/bp/temporal/ChronoUnit;

    if-ne p3, v1, :cond_1

    .line 638
    const v1, 0x15180

    invoke-static {p1, p2, v1}, Lorg/threeten/bp/jdk8/Jdk8Methods;->safeMultiply(JI)J

    move-result-wide v2

    invoke-direct {p0, v2, v3, v4, v5}, Lorg/threeten/bp/Duration;->plus(JJ)Lorg/threeten/bp/Duration;

    move-result-object p0

    .line 656
    .end local p0    # "this":Lorg/threeten/bp/Duration;
    :cond_0
    :goto_0
    return-object p0

    .line 640
    .restart local p0    # "this":Lorg/threeten/bp/Duration;
    :cond_1
    invoke-interface {p3}, Lorg/threeten/bp/temporal/TemporalUnit;->isDurationEstimated()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 641
    new-instance v1, Lorg/threeten/bp/DateTimeException;

    const-string v2, "Unit must not have an estimated duration"

    invoke-direct {v1, v2}, Lorg/threeten/bp/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 643
    :cond_2
    cmp-long v1, p1, v4

    if-eqz v1, :cond_0

    .line 646
    instance-of v1, p3, Lorg/threeten/bp/temporal/ChronoUnit;

    if-eqz v1, :cond_3

    .line 647
    sget-object v2, Lorg/threeten/bp/Duration$1;->$SwitchMap$org$threeten$bp$temporal$ChronoUnit:[I

    move-object v1, p3

    check-cast v1, Lorg/threeten/bp/temporal/ChronoUnit;

    invoke-virtual {v1}, Lorg/threeten/bp/temporal/ChronoUnit;->ordinal()I

    move-result v1

    aget v1, v2, v1

    packed-switch v1, :pswitch_data_0

    .line 653
    invoke-interface {p3}, Lorg/threeten/bp/temporal/TemporalUnit;->getDuration()Lorg/threeten/bp/Duration;

    move-result-object v1

    iget-wide v2, v1, Lorg/threeten/bp/Duration;->seconds:J

    invoke-static {v2, v3, p1, p2}, Lorg/threeten/bp/jdk8/Jdk8Methods;->safeMultiply(JJ)J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lorg/threeten/bp/Duration;->plusSeconds(J)Lorg/threeten/bp/Duration;

    move-result-object p0

    goto :goto_0

    .line 648
    :pswitch_0
    invoke-virtual {p0, p1, p2}, Lorg/threeten/bp/Duration;->plusNanos(J)Lorg/threeten/bp/Duration;

    move-result-object p0

    goto :goto_0

    .line 649
    :pswitch_1
    div-long v2, p1, v8

    mul-long/2addr v2, v6

    invoke-virtual {p0, v2, v3}, Lorg/threeten/bp/Duration;->plusSeconds(J)Lorg/threeten/bp/Duration;

    move-result-object v1

    rem-long v2, p1, v8

    mul-long/2addr v2, v6

    invoke-virtual {v1, v2, v3}, Lorg/threeten/bp/Duration;->plusNanos(J)Lorg/threeten/bp/Duration;

    move-result-object p0

    goto :goto_0

    .line 650
    :pswitch_2
    invoke-virtual {p0, p1, p2}, Lorg/threeten/bp/Duration;->plusMillis(J)Lorg/threeten/bp/Duration;

    move-result-object p0

    goto :goto_0

    .line 651
    :pswitch_3
    invoke-virtual {p0, p1, p2}, Lorg/threeten/bp/Duration;->plusSeconds(J)Lorg/threeten/bp/Duration;

    move-result-object p0

    goto :goto_0

    .line 655
    :cond_3
    invoke-interface {p3}, Lorg/threeten/bp/temporal/TemporalUnit;->getDuration()Lorg/threeten/bp/Duration;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lorg/threeten/bp/Duration;->multipliedBy(J)Lorg/threeten/bp/Duration;

    move-result-object v0

    .line 656
    .local v0, "duration":Lorg/threeten/bp/Duration;
    invoke-virtual {v0}, Lorg/threeten/bp/Duration;->getSeconds()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lorg/threeten/bp/Duration;->plusSeconds(J)Lorg/threeten/bp/Duration;

    move-result-object v1

    invoke-virtual {v0}, Lorg/threeten/bp/Duration;->getNano()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Lorg/threeten/bp/Duration;->plusNanos(J)Lorg/threeten/bp/Duration;

    move-result-object p0

    goto :goto_0

    .line 647
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public plus(Lorg/threeten/bp/Duration;)Lorg/threeten/bp/Duration;
    .locals 4
    .param p1, "duration"    # Lorg/threeten/bp/Duration;

    .prologue
    .line 617
    invoke-virtual {p1}, Lorg/threeten/bp/Duration;->getSeconds()J

    move-result-wide v0

    invoke-virtual {p1}, Lorg/threeten/bp/Duration;->getNano()I

    move-result v2

    int-to-long v2, v2

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/threeten/bp/Duration;->plus(JJ)Lorg/threeten/bp/Duration;

    move-result-object v0

    return-object v0
.end method

.method public plusDays(J)Lorg/threeten/bp/Duration;
    .locals 5
    .param p1, "daysToAdd"    # J

    .prologue
    .line 670
    const v0, 0x15180

    invoke-static {p1, p2, v0}, Lorg/threeten/bp/jdk8/Jdk8Methods;->safeMultiply(JI)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/threeten/bp/Duration;->plus(JJ)Lorg/threeten/bp/Duration;

    move-result-object v0

    return-object v0
.end method

.method public plusHours(J)Lorg/threeten/bp/Duration;
    .locals 5
    .param p1, "hoursToAdd"    # J

    .prologue
    .line 683
    const/16 v0, 0xe10

    invoke-static {p1, p2, v0}, Lorg/threeten/bp/jdk8/Jdk8Methods;->safeMultiply(JI)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/threeten/bp/Duration;->plus(JJ)Lorg/threeten/bp/Duration;

    move-result-object v0

    return-object v0
.end method

.method public plusMillis(J)Lorg/threeten/bp/Duration;
    .locals 7
    .param p1, "millisToAdd"    # J

    .prologue
    const-wide/16 v2, 0x3e8

    .line 722
    div-long v0, p1, v2

    rem-long v2, p1, v2

    const-wide/32 v4, 0xf4240

    mul-long/2addr v2, v4

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/threeten/bp/Duration;->plus(JJ)Lorg/threeten/bp/Duration;

    move-result-object v0

    return-object v0
.end method

.method public plusMinutes(J)Lorg/threeten/bp/Duration;
    .locals 5
    .param p1, "minutesToAdd"    # J

    .prologue
    .line 696
    const/16 v0, 0x3c

    invoke-static {p1, p2, v0}, Lorg/threeten/bp/jdk8/Jdk8Methods;->safeMultiply(JI)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/threeten/bp/Duration;->plus(JJ)Lorg/threeten/bp/Duration;

    move-result-object v0

    return-object v0
.end method

.method public plusNanos(J)Lorg/threeten/bp/Duration;
    .locals 3
    .param p1, "nanosToAdd"    # J

    .prologue
    .line 735
    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1, p1, p2}, Lorg/threeten/bp/Duration;->plus(JJ)Lorg/threeten/bp/Duration;

    move-result-object v0

    return-object v0
.end method

.method public plusSeconds(J)Lorg/threeten/bp/Duration;
    .locals 3
    .param p1, "secondsToAdd"    # J

    .prologue
    .line 709
    const-wide/16 v0, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lorg/threeten/bp/Duration;->plus(JJ)Lorg/threeten/bp/Duration;

    move-result-object v0

    return-object v0
.end method

.method public subtractFrom(Lorg/threeten/bp/temporal/Temporal;)Lorg/threeten/bp/temporal/Temporal;
    .locals 4
    .param p1, "temporal"    # Lorg/threeten/bp/temporal/Temporal;

    .prologue
    .line 1035
    iget-wide v0, p0, Lorg/threeten/bp/Duration;->seconds:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 1036
    iget-wide v0, p0, Lorg/threeten/bp/Duration;->seconds:J

    sget-object v2, Lorg/threeten/bp/temporal/ChronoUnit;->SECONDS:Lorg/threeten/bp/temporal/ChronoUnit;

    invoke-interface {p1, v0, v1, v2}, Lorg/threeten/bp/temporal/Temporal;->minus(JLorg/threeten/bp/temporal/TemporalUnit;)Lorg/threeten/bp/temporal/Temporal;

    move-result-object p1

    .line 1038
    :cond_0
    iget v0, p0, Lorg/threeten/bp/Duration;->nanos:I

    if-eqz v0, :cond_1

    .line 1039
    iget v0, p0, Lorg/threeten/bp/Duration;->nanos:I

    int-to-long v0, v0

    sget-object v2, Lorg/threeten/bp/temporal/ChronoUnit;->NANOS:Lorg/threeten/bp/temporal/ChronoUnit;

    invoke-interface {p1, v0, v1, v2}, Lorg/threeten/bp/temporal/Temporal;->minus(JLorg/threeten/bp/temporal/TemporalUnit;)Lorg/threeten/bp/temporal/Temporal;

    move-result-object p1

    .line 1041
    :cond_1
    return-object p1
.end method

.method public toDays()J
    .locals 4

    .prologue
    .line 1057
    iget-wide v0, p0, Lorg/threeten/bp/Duration;->seconds:J

    const-wide/32 v2, 0x15180

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public toHours()J
    .locals 4

    .prologue
    .line 1071
    iget-wide v0, p0, Lorg/threeten/bp/Duration;->seconds:J

    const-wide/16 v2, 0xe10

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public toMillis()J
    .locals 5

    .prologue
    .line 1102
    iget-wide v2, p0, Lorg/threeten/bp/Duration;->seconds:J

    const/16 v4, 0x3e8

    invoke-static {v2, v3, v4}, Lorg/threeten/bp/jdk8/Jdk8Methods;->safeMultiply(JI)J

    move-result-wide v0

    .line 1103
    .local v0, "result":J
    iget v2, p0, Lorg/threeten/bp/Duration;->nanos:I

    const v3, 0xf4240

    div-int/2addr v2, v3

    int-to-long v2, v2

    invoke-static {v0, v1, v2, v3}, Lorg/threeten/bp/jdk8/Jdk8Methods;->safeAdd(JJ)J

    move-result-wide v0

    .line 1104
    return-wide v0
.end method

.method public toMinutes()J
    .locals 4

    .prologue
    .line 1085
    iget-wide v0, p0, Lorg/threeten/bp/Duration;->seconds:J

    const-wide/16 v2, 0x3c

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public toNanos()J
    .locals 5

    .prologue
    .line 1117
    iget-wide v2, p0, Lorg/threeten/bp/Duration;->seconds:J

    const v4, 0x3b9aca00

    invoke-static {v2, v3, v4}, Lorg/threeten/bp/jdk8/Jdk8Methods;->safeMultiply(JI)J

    move-result-wide v0

    .line 1118
    .local v0, "result":J
    iget v2, p0, Lorg/threeten/bp/Duration;->nanos:I

    int-to-long v2, v2

    invoke-static {v0, v1, v2, v3}, Lorg/threeten/bp/jdk8/Jdk8Methods;->safeAdd(JJ)J

    move-result-wide v0

    .line 1119
    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 12

    .prologue
    const-wide/16 v10, 0xe10

    const-wide/16 v8, 0x3c

    .line 1198
    sget-object v6, Lorg/threeten/bp/Duration;->ZERO:Lorg/threeten/bp/Duration;

    if-ne p0, v6, :cond_0

    .line 1199
    const-string v6, "PT0S"

    .line 1237
    :goto_0
    return-object v6

    .line 1201
    :cond_0
    iget-wide v6, p0, Lorg/threeten/bp/Duration;->seconds:J

    div-long v2, v6, v10

    .line 1202
    .local v2, "hours":J
    iget-wide v6, p0, Lorg/threeten/bp/Duration;->seconds:J

    rem-long/2addr v6, v10

    div-long/2addr v6, v8

    long-to-int v1, v6

    .line 1203
    .local v1, "minutes":I
    iget-wide v6, p0, Lorg/threeten/bp/Duration;->seconds:J

    rem-long/2addr v6, v8

    long-to-int v5, v6

    .line 1204
    .local v5, "secs":I
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v6, 0x18

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1205
    .local v0, "buf":Ljava/lang/StringBuilder;
    const-string v6, "PT"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1206
    const-wide/16 v6, 0x0

    cmp-long v6, v2, v6

    if-eqz v6, :cond_1

    .line 1207
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v7, 0x48

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1209
    :cond_1
    if-eqz v1, :cond_2

    .line 1210
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v7, 0x4d

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1212
    :cond_2
    if-nez v5, :cond_3

    iget v6, p0, Lorg/threeten/bp/Duration;->nanos:I

    if-nez v6, :cond_3

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    const/4 v7, 0x2

    if-le v6, v7, :cond_3

    .line 1213
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 1215
    :cond_3
    if-gez v5, :cond_5

    iget v6, p0, Lorg/threeten/bp/Duration;->nanos:I

    if-lez v6, :cond_5

    .line 1216
    const/4 v6, -0x1

    if-ne v5, v6, :cond_4

    .line 1217
    const-string v6, "-0"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1224
    :goto_1
    iget v6, p0, Lorg/threeten/bp/Duration;->nanos:I

    if-lez v6, :cond_8

    .line 1225
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    .line 1226
    .local v4, "pos":I
    if-gez v5, :cond_6

    .line 1227
    const v6, 0x77359400

    iget v7, p0, Lorg/threeten/bp/Duration;->nanos:I

    sub-int/2addr v6, v7

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1231
    :goto_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v6

    const/16 v7, 0x30

    if-ne v6, v7, :cond_7

    .line 1232
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    goto :goto_2

    .line 1219
    .end local v4    # "pos":I
    :cond_4
    add-int/lit8 v6, v5, 0x1

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1222
    :cond_5
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1229
    .restart local v4    # "pos":I
    :cond_6
    iget v6, p0, Lorg/threeten/bp/Duration;->nanos:I

    const v7, 0x3b9aca00

    add-int/2addr v6, v7

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 1234
    :cond_7
    const/16 v6, 0x2e

    invoke-virtual {v0, v4, v6}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 1236
    .end local v4    # "pos":I
    :cond_8
    const/16 v6, 0x53

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1237
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_0
.end method

.method public withNanos(I)Lorg/threeten/bp/Duration;
    .locals 4
    .param p1, "nanoOfSecond"    # I

    .prologue
    .line 602
    sget-object v0, Lorg/threeten/bp/temporal/ChronoField;->NANO_OF_SECOND:Lorg/threeten/bp/temporal/ChronoField;

    int-to-long v2, p1

    invoke-virtual {v0, v2, v3}, Lorg/threeten/bp/temporal/ChronoField;->checkValidIntValue(J)I

    .line 603
    iget-wide v0, p0, Lorg/threeten/bp/Duration;->seconds:J

    invoke-static {v0, v1, p1}, Lorg/threeten/bp/Duration;->create(JI)Lorg/threeten/bp/Duration;

    move-result-object v0

    return-object v0
.end method

.method public withSeconds(J)Lorg/threeten/bp/Duration;
    .locals 1
    .param p1, "seconds"    # J

    .prologue
    .line 586
    iget v0, p0, Lorg/threeten/bp/Duration;->nanos:I

    invoke-static {p1, p2, v0}, Lorg/threeten/bp/Duration;->create(JI)Lorg/threeten/bp/Duration;

    move-result-object v0

    return-object v0
.end method

.method writeExternal(Ljava/io/DataOutput;)V
    .locals 2
    .param p1, "out"    # Ljava/io/DataOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1255
    iget-wide v0, p0, Lorg/threeten/bp/Duration;->seconds:J

    invoke-interface {p1, v0, v1}, Ljava/io/DataOutput;->writeLong(J)V

    .line 1256
    iget v0, p0, Lorg/threeten/bp/Duration;->nanos:I

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    .line 1257
    return-void
.end method
