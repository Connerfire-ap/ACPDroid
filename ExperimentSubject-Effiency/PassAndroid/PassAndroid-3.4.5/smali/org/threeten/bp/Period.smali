.class public final Lorg/threeten/bp/Period;
.super Lorg/threeten/bp/chrono/ChronoPeriod;
.source "Period.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final PATTERN:Ljava/util/regex/Pattern;

.field public static final ZERO:Lorg/threeten/bp/Period;

.field private static final serialVersionUID:J = -0x730df99cdf2a29e5L


# instance fields
.field private final days:I

.field private final months:I

.field private final years:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 98
    new-instance v0, Lorg/threeten/bp/Period;

    invoke-direct {v0, v1, v1, v1}, Lorg/threeten/bp/Period;-><init>(III)V

    sput-object v0, Lorg/threeten/bp/Period;->ZERO:Lorg/threeten/bp/Period;

    .line 106
    const-string v0, "([-+]?)P(?:([-+]?[0-9]+)Y)?(?:([-+]?[0-9]+)M)?(?:([-+]?[0-9]+)W)?(?:([-+]?[0-9]+)D)?"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/threeten/bp/Period;->PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method private constructor <init>(III)V
    .locals 0
    .param p1, "years"    # I
    .param p2, "months"    # I
    .param p3, "days"    # I

    .prologue
    .line 361
    invoke-direct {p0}, Lorg/threeten/bp/chrono/ChronoPeriod;-><init>()V

    .line 362
    iput p1, p0, Lorg/threeten/bp/Period;->years:I

    .line 363
    iput p2, p0, Lorg/threeten/bp/Period;->months:I

    .line 364
    iput p3, p0, Lorg/threeten/bp/Period;->days:I

    .line 365
    return-void
.end method

.method public static between(Lorg/threeten/bp/LocalDate;Lorg/threeten/bp/LocalDate;)Lorg/threeten/bp/Period;
    .locals 1
    .param p0, "startDate"    # Lorg/threeten/bp/LocalDate;
    .param p1, "endDate"    # Lorg/threeten/bp/LocalDate;

    .prologue
    .line 259
    invoke-virtual {p0, p1}, Lorg/threeten/bp/LocalDate;->until(Lorg/threeten/bp/chrono/ChronoLocalDate;)Lorg/threeten/bp/Period;

    move-result-object v0

    return-object v0
.end method

.method private static create(III)Lorg/threeten/bp/Period;
    .locals 1
    .param p0, "years"    # I
    .param p1, "months"    # I
    .param p2, "days"    # I

    .prologue
    .line 348
    or-int v0, p0, p1

    or-int/2addr v0, p2

    if-nez v0, :cond_0

    .line 349
    sget-object v0, Lorg/threeten/bp/Period;->ZERO:Lorg/threeten/bp/Period;

    .line 351
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lorg/threeten/bp/Period;

    invoke-direct {v0, p0, p1, p2}, Lorg/threeten/bp/Period;-><init>(III)V

    goto :goto_0
.end method

.method public static from(Lorg/threeten/bp/temporal/TemporalAmount;)Lorg/threeten/bp/Period;
    .locals 10
    .param p0, "amount"    # Lorg/threeten/bp/temporal/TemporalAmount;

    .prologue
    .line 211
    instance-of v7, p0, Lorg/threeten/bp/Period;

    if-eqz v7, :cond_0

    .line 212
    check-cast p0, Lorg/threeten/bp/Period;

    .line 235
    .end local p0    # "amount":Lorg/threeten/bp/temporal/TemporalAmount;
    .local v0, "days":I
    .local v1, "i$":Ljava/util/Iterator;
    .local v2, "months":I
    .local v6, "years":I
    :goto_0
    return-object p0

    .line 214
    .end local v0    # "days":I
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "months":I
    .end local v6    # "years":I
    .restart local p0    # "amount":Lorg/threeten/bp/temporal/TemporalAmount;
    :cond_0
    instance-of v7, p0, Lorg/threeten/bp/chrono/ChronoPeriod;

    if-eqz v7, :cond_1

    .line 215
    sget-object v8, Lorg/threeten/bp/chrono/IsoChronology;->INSTANCE:Lorg/threeten/bp/chrono/IsoChronology;

    move-object v7, p0

    check-cast v7, Lorg/threeten/bp/chrono/ChronoPeriod;

    invoke-virtual {v7}, Lorg/threeten/bp/chrono/ChronoPeriod;->getChronology()Lorg/threeten/bp/chrono/Chronology;

    move-result-object v7

    invoke-virtual {v8, v7}, Lorg/threeten/bp/chrono/IsoChronology;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 216
    new-instance v7, Lorg/threeten/bp/DateTimeException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Period requires ISO chronology: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lorg/threeten/bp/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 219
    :cond_1
    const-string v7, "amount"

    invoke-static {p0, v7}, Lorg/threeten/bp/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 220
    const/4 v6, 0x0

    .line 221
    .restart local v6    # "years":I
    const/4 v2, 0x0

    .line 222
    .restart local v2    # "months":I
    const/4 v0, 0x0

    .line 223
    .restart local v0    # "days":I
    invoke-interface {p0}, Lorg/threeten/bp/temporal/TemporalAmount;->getUnits()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .restart local v1    # "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/threeten/bp/temporal/TemporalUnit;

    .line 224
    .local v3, "unit":Lorg/threeten/bp/temporal/TemporalUnit;
    invoke-interface {p0, v3}, Lorg/threeten/bp/temporal/TemporalAmount;->get(Lorg/threeten/bp/temporal/TemporalUnit;)J

    move-result-wide v4

    .line 225
    .local v4, "unitAmount":J
    sget-object v7, Lorg/threeten/bp/temporal/ChronoUnit;->YEARS:Lorg/threeten/bp/temporal/ChronoUnit;

    if-ne v3, v7, :cond_2

    .line 226
    invoke-static {v4, v5}, Lorg/threeten/bp/jdk8/Jdk8Methods;->safeToInt(J)I

    move-result v6

    goto :goto_1

    .line 227
    :cond_2
    sget-object v7, Lorg/threeten/bp/temporal/ChronoUnit;->MONTHS:Lorg/threeten/bp/temporal/ChronoUnit;

    if-ne v3, v7, :cond_3

    .line 228
    invoke-static {v4, v5}, Lorg/threeten/bp/jdk8/Jdk8Methods;->safeToInt(J)I

    move-result v2

    goto :goto_1

    .line 229
    :cond_3
    sget-object v7, Lorg/threeten/bp/temporal/ChronoUnit;->DAYS:Lorg/threeten/bp/temporal/ChronoUnit;

    if-ne v3, v7, :cond_4

    .line 230
    invoke-static {v4, v5}, Lorg/threeten/bp/jdk8/Jdk8Methods;->safeToInt(J)I

    move-result v0

    goto :goto_1

    .line 232
    :cond_4
    new-instance v7, Lorg/threeten/bp/DateTimeException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unit must be Years, Months or Days, but was "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lorg/threeten/bp/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 235
    .end local v3    # "unit":Lorg/threeten/bp/temporal/TemporalUnit;
    .end local v4    # "unitAmount":J
    :cond_5
    invoke-static {v6, v2, v0}, Lorg/threeten/bp/Period;->create(III)Lorg/threeten/bp/Period;

    move-result-object p0

    goto/16 :goto_0
.end method

.method public static of(III)Lorg/threeten/bp/Period;
    .locals 1
    .param p0, "years"    # I
    .param p1, "months"    # I
    .param p2, "days"    # I

    .prologue
    .line 187
    invoke-static {p0, p1, p2}, Lorg/threeten/bp/Period;->create(III)Lorg/threeten/bp/Period;

    move-result-object v0

    return-object v0
.end method

.method public static ofDays(I)Lorg/threeten/bp/Period;
    .locals 1
    .param p0, "days"    # I

    .prologue
    const/4 v0, 0x0

    .line 172
    invoke-static {v0, v0, p0}, Lorg/threeten/bp/Period;->create(III)Lorg/threeten/bp/Period;

    move-result-object v0

    return-object v0
.end method

.method public static ofMonths(I)Lorg/threeten/bp/Period;
    .locals 1
    .param p0, "months"    # I

    .prologue
    const/4 v0, 0x0

    .line 146
    invoke-static {v0, p0, v0}, Lorg/threeten/bp/Period;->create(III)Lorg/threeten/bp/Period;

    move-result-object v0

    return-object v0
.end method

.method public static ofWeeks(I)Lorg/threeten/bp/Period;
    .locals 2
    .param p0, "weeks"    # I

    .prologue
    const/4 v1, 0x0

    .line 159
    const/4 v0, 0x7

    invoke-static {p0, v0}, Lorg/threeten/bp/jdk8/Jdk8Methods;->safeMultiply(II)I

    move-result v0

    invoke-static {v1, v1, v0}, Lorg/threeten/bp/Period;->create(III)Lorg/threeten/bp/Period;

    move-result-object v0

    return-object v0
.end method

.method public static ofYears(I)Lorg/threeten/bp/Period;
    .locals 1
    .param p0, "years"    # I

    .prologue
    const/4 v0, 0x0

    .line 133
    invoke-static {p0, v0, v0}, Lorg/threeten/bp/Period;->create(III)Lorg/threeten/bp/Period;

    move-result-object v0

    return-object v0
.end method

.method public static parse(Ljava/lang/CharSequence;)Lorg/threeten/bp/Period;
    .locals 14
    .param p0, "text"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v6, 0x1

    const/4 v13, 0x0

    .line 303
    const-string v11, "text"

    invoke-static {p0, v11}, Lorg/threeten/bp/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 304
    sget-object v11, Lorg/threeten/bp/Period;->PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v11, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 305
    .local v3, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    move-result v11

    if-eqz v11, :cond_2

    .line 306
    const-string v11, "-"

    invoke-virtual {v3, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    const/4 v6, -0x1

    .line 307
    .local v6, "negate":I
    :cond_0
    const/4 v11, 0x2

    invoke-virtual {v3, v11}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v9

    .line 308
    .local v9, "yearMatch":Ljava/lang/String;
    const/4 v11, 0x3

    invoke-virtual {v3, v11}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    .line 309
    .local v4, "monthMatch":Ljava/lang/String;
    const/4 v11, 0x4

    invoke-virtual {v3, v11}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    .line 310
    .local v7, "weekMatch":Ljava/lang/String;
    const/4 v11, 0x5

    invoke-virtual {v3, v11}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    .line 311
    .local v0, "dayMatch":Ljava/lang/String;
    if-nez v9, :cond_1

    if-nez v4, :cond_1

    if-nez v7, :cond_1

    if-eqz v0, :cond_2

    .line 313
    :cond_1
    :try_start_0
    invoke-static {p0, v9, v6}, Lorg/threeten/bp/Period;->parseNumber(Ljava/lang/CharSequence;Ljava/lang/String;I)I

    move-result v10

    .line 314
    .local v10, "years":I
    invoke-static {p0, v4, v6}, Lorg/threeten/bp/Period;->parseNumber(Ljava/lang/CharSequence;Ljava/lang/String;I)I

    move-result v5

    .line 315
    .local v5, "months":I
    invoke-static {p0, v7, v6}, Lorg/threeten/bp/Period;->parseNumber(Ljava/lang/CharSequence;Ljava/lang/String;I)I

    move-result v8

    .line 316
    .local v8, "weeks":I
    invoke-static {p0, v0, v6}, Lorg/threeten/bp/Period;->parseNumber(Ljava/lang/CharSequence;Ljava/lang/String;I)I

    move-result v1

    .line 317
    .local v1, "days":I
    const/4 v11, 0x7

    invoke-static {v8, v11}, Lorg/threeten/bp/jdk8/Jdk8Methods;->safeMultiply(II)I

    move-result v11

    invoke-static {v1, v11}, Lorg/threeten/bp/jdk8/Jdk8Methods;->safeAdd(II)I

    move-result v1

    .line 318
    invoke-static {v10, v5, v1}, Lorg/threeten/bp/Period;->create(III)Lorg/threeten/bp/Period;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v11

    return-object v11

    .line 319
    .end local v1    # "days":I
    .end local v5    # "months":I
    .end local v8    # "weeks":I
    .end local v10    # "years":I
    :catch_0
    move-exception v2

    .line 320
    .local v2, "ex":Ljava/lang/NumberFormatException;
    new-instance v11, Lorg/threeten/bp/format/DateTimeParseException;

    const-string v12, "Text cannot be parsed to a Period"

    invoke-direct {v11, v12, p0, v13}, Lorg/threeten/bp/format/DateTimeParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    invoke-virtual {v11, v2}, Lorg/threeten/bp/format/DateTimeParseException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v11

    check-cast v11, Lorg/threeten/bp/format/DateTimeParseException;

    throw v11

    .line 324
    .end local v0    # "dayMatch":Ljava/lang/String;
    .end local v2    # "ex":Ljava/lang/NumberFormatException;
    .end local v4    # "monthMatch":Ljava/lang/String;
    .end local v6    # "negate":I
    .end local v7    # "weekMatch":Ljava/lang/String;
    .end local v9    # "yearMatch":Ljava/lang/String;
    :cond_2
    new-instance v11, Lorg/threeten/bp/format/DateTimeParseException;

    const-string v12, "Text cannot be parsed to a Period"

    invoke-direct {v11, v12, p0, v13}, Lorg/threeten/bp/format/DateTimeParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    throw v11
.end method

.method private static parseNumber(Ljava/lang/CharSequence;Ljava/lang/String;I)I
    .locals 5
    .param p0, "text"    # Ljava/lang/CharSequence;
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "negate"    # I

    .prologue
    const/4 v2, 0x0

    .line 328
    if-nez p1, :cond_0

    .line 333
    :goto_0
    return v2

    .line 331
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 333
    .local v1, "val":I
    :try_start_0
    invoke-static {v1, p2}, Lorg/threeten/bp/jdk8/Jdk8Methods;->safeMultiply(II)I
    :try_end_0
    .catch Ljava/lang/ArithmeticException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 334
    :catch_0
    move-exception v0

    .line 335
    .local v0, "ex":Ljava/lang/ArithmeticException;
    new-instance v3, Lorg/threeten/bp/format/DateTimeParseException;

    const-string v4, "Text cannot be parsed to a Period"

    invoke-direct {v3, v4, p0, v2}, Lorg/threeten/bp/format/DateTimeParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    invoke-virtual {v3, v0}, Lorg/threeten/bp/format/DateTimeParseException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v2

    check-cast v2, Lorg/threeten/bp/format/DateTimeParseException;

    throw v2
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 373
    iget v0, p0, Lorg/threeten/bp/Period;->years:I

    iget v1, p0, Lorg/threeten/bp/Period;->months:I

    or-int/2addr v0, v1

    iget v1, p0, Lorg/threeten/bp/Period;->days:I

    or-int/2addr v0, v1

    if-nez v0, :cond_0

    .line 374
    sget-object p0, Lorg/threeten/bp/Period;->ZERO:Lorg/threeten/bp/Period;

    .line 376
    .end local p0    # "this":Lorg/threeten/bp/Period;
    :cond_0
    return-object p0
.end method


# virtual methods
.method public addTo(Lorg/threeten/bp/temporal/Temporal;)Lorg/threeten/bp/temporal/Temporal;
    .locals 3
    .param p1, "temporal"    # Lorg/threeten/bp/temporal/Temporal;

    .prologue
    .line 799
    const-string v0, "temporal"

    invoke-static {p1, v0}, Lorg/threeten/bp/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 800
    iget v0, p0, Lorg/threeten/bp/Period;->years:I

    if-eqz v0, :cond_3

    .line 801
    iget v0, p0, Lorg/threeten/bp/Period;->months:I

    if-eqz v0, :cond_2

    .line 802
    invoke-virtual {p0}, Lorg/threeten/bp/Period;->toTotalMonths()J

    move-result-wide v0

    sget-object v2, Lorg/threeten/bp/temporal/ChronoUnit;->MONTHS:Lorg/threeten/bp/temporal/ChronoUnit;

    invoke-interface {p1, v0, v1, v2}, Lorg/threeten/bp/temporal/Temporal;->plus(JLorg/threeten/bp/temporal/TemporalUnit;)Lorg/threeten/bp/temporal/Temporal;

    move-result-object p1

    .line 809
    :cond_0
    :goto_0
    iget v0, p0, Lorg/threeten/bp/Period;->days:I

    if-eqz v0, :cond_1

    .line 810
    iget v0, p0, Lorg/threeten/bp/Period;->days:I

    int-to-long v0, v0

    sget-object v2, Lorg/threeten/bp/temporal/ChronoUnit;->DAYS:Lorg/threeten/bp/temporal/ChronoUnit;

    invoke-interface {p1, v0, v1, v2}, Lorg/threeten/bp/temporal/Temporal;->plus(JLorg/threeten/bp/temporal/TemporalUnit;)Lorg/threeten/bp/temporal/Temporal;

    move-result-object p1

    .line 812
    :cond_1
    return-object p1

    .line 804
    :cond_2
    iget v0, p0, Lorg/threeten/bp/Period;->years:I

    int-to-long v0, v0

    sget-object v2, Lorg/threeten/bp/temporal/ChronoUnit;->YEARS:Lorg/threeten/bp/temporal/ChronoUnit;

    invoke-interface {p1, v0, v1, v2}, Lorg/threeten/bp/temporal/Temporal;->plus(JLorg/threeten/bp/temporal/TemporalUnit;)Lorg/threeten/bp/temporal/Temporal;

    move-result-object p1

    goto :goto_0

    .line 806
    :cond_3
    iget v0, p0, Lorg/threeten/bp/Period;->months:I

    if-eqz v0, :cond_0

    .line 807
    iget v0, p0, Lorg/threeten/bp/Period;->months:I

    int-to-long v0, v0

    sget-object v2, Lorg/threeten/bp/temporal/ChronoUnit;->MONTHS:Lorg/threeten/bp/temporal/ChronoUnit;

    invoke-interface {p1, v0, v1, v2}, Lorg/threeten/bp/temporal/Temporal;->plus(JLorg/threeten/bp/temporal/TemporalUnit;)Lorg/threeten/bp/temporal/Temporal;

    move-result-object p1

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 879
    if-ne p0, p1, :cond_1

    .line 888
    :cond_0
    :goto_0
    return v1

    .line 882
    :cond_1
    instance-of v3, p1, Lorg/threeten/bp/Period;

    if-eqz v3, :cond_3

    move-object v0, p1

    .line 883
    check-cast v0, Lorg/threeten/bp/Period;

    .line 884
    .local v0, "other":Lorg/threeten/bp/Period;
    iget v3, p0, Lorg/threeten/bp/Period;->years:I

    iget v4, v0, Lorg/threeten/bp/Period;->years:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Lorg/threeten/bp/Period;->months:I

    iget v4, v0, Lorg/threeten/bp/Period;->months:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Lorg/threeten/bp/Period;->days:I

    iget v4, v0, Lorg/threeten/bp/Period;->days:I

    if-eq v3, v4, :cond_0

    :cond_2
    move v1, v2

    goto :goto_0

    .end local v0    # "other":Lorg/threeten/bp/Period;
    :cond_3
    move v1, v2

    .line 888
    goto :goto_0
.end method

.method public get(Lorg/threeten/bp/temporal/TemporalUnit;)J
    .locals 3
    .param p1, "unit"    # Lorg/threeten/bp/temporal/TemporalUnit;

    .prologue
    .line 392
    sget-object v0, Lorg/threeten/bp/temporal/ChronoUnit;->YEARS:Lorg/threeten/bp/temporal/ChronoUnit;

    if-ne p1, v0, :cond_0

    .line 393
    iget v0, p0, Lorg/threeten/bp/Period;->years:I

    int-to-long v0, v0

    .line 399
    :goto_0
    return-wide v0

    .line 395
    :cond_0
    sget-object v0, Lorg/threeten/bp/temporal/ChronoUnit;->MONTHS:Lorg/threeten/bp/temporal/ChronoUnit;

    if-ne p1, v0, :cond_1

    .line 396
    iget v0, p0, Lorg/threeten/bp/Period;->months:I

    int-to-long v0, v0

    goto :goto_0

    .line 398
    :cond_1
    sget-object v0, Lorg/threeten/bp/temporal/ChronoUnit;->DAYS:Lorg/threeten/bp/temporal/ChronoUnit;

    if-ne p1, v0, :cond_2

    .line 399
    iget v0, p0, Lorg/threeten/bp/Period;->days:I

    int-to-long v0, v0

    goto :goto_0

    .line 401
    :cond_2
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

.method public getChronology()Lorg/threeten/bp/chrono/Chronology;
    .locals 1

    .prologue
    .line 387
    sget-object v0, Lorg/threeten/bp/chrono/IsoChronology;->INSTANCE:Lorg/threeten/bp/chrono/IsoChronology;

    return-object v0
.end method

.method public getDays()I
    .locals 1

    .prologue
    .line 466
    iget v0, p0, Lorg/threeten/bp/Period;->days:I

    return v0
.end method

.method public getMonths()I
    .locals 1

    .prologue
    .line 455
    iget v0, p0, Lorg/threeten/bp/Period;->months:I

    return v0
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
    .line 382
    const/4 v0, 0x3

    new-array v0, v0, [Lorg/threeten/bp/temporal/ChronoUnit;

    const/4 v1, 0x0

    sget-object v2, Lorg/threeten/bp/temporal/ChronoUnit;->YEARS:Lorg/threeten/bp/temporal/ChronoUnit;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lorg/threeten/bp/temporal/ChronoUnit;->MONTHS:Lorg/threeten/bp/temporal/ChronoUnit;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lorg/threeten/bp/temporal/ChronoUnit;->DAYS:Lorg/threeten/bp/temporal/ChronoUnit;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getYears()I
    .locals 1

    .prologue
    .line 440
    iget v0, p0, Lorg/threeten/bp/Period;->years:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 898
    iget v0, p0, Lorg/threeten/bp/Period;->years:I

    iget v1, p0, Lorg/threeten/bp/Period;->months:I

    const/16 v2, 0x8

    invoke-static {v1, v2}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Lorg/threeten/bp/Period;->days:I

    const/16 v2, 0x10

    invoke-static {v1, v2}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public isNegative()Z
    .locals 1

    .prologue
    .line 424
    iget v0, p0, Lorg/threeten/bp/Period;->years:I

    if-ltz v0, :cond_0

    iget v0, p0, Lorg/threeten/bp/Period;->months:I

    if-ltz v0, :cond_0

    iget v0, p0, Lorg/threeten/bp/Period;->days:I

    if-gez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isZero()Z
    .locals 1

    .prologue
    .line 413
    sget-object v0, Lorg/threeten/bp/Period;->ZERO:Lorg/threeten/bp/Period;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public minus(Lorg/threeten/bp/temporal/TemporalAmount;)Lorg/threeten/bp/Period;
    .locals 5
    .param p1, "amountToSubtract"    # Lorg/threeten/bp/temporal/TemporalAmount;

    .prologue
    .line 633
    invoke-static {p1}, Lorg/threeten/bp/Period;->from(Lorg/threeten/bp/temporal/TemporalAmount;)Lorg/threeten/bp/Period;

    move-result-object v0

    .line 634
    .local v0, "amount":Lorg/threeten/bp/Period;
    iget v1, p0, Lorg/threeten/bp/Period;->years:I

    iget v2, v0, Lorg/threeten/bp/Period;->years:I

    invoke-static {v1, v2}, Lorg/threeten/bp/jdk8/Jdk8Methods;->safeSubtract(II)I

    move-result v1

    iget v2, p0, Lorg/threeten/bp/Period;->months:I

    iget v3, v0, Lorg/threeten/bp/Period;->months:I

    invoke-static {v2, v3}, Lorg/threeten/bp/jdk8/Jdk8Methods;->safeSubtract(II)I

    move-result v2

    iget v3, p0, Lorg/threeten/bp/Period;->days:I

    iget v4, v0, Lorg/threeten/bp/Period;->days:I

    invoke-static {v3, v4}, Lorg/threeten/bp/jdk8/Jdk8Methods;->safeSubtract(II)I

    move-result v3

    invoke-static {v1, v2, v3}, Lorg/threeten/bp/Period;->create(III)Lorg/threeten/bp/Period;

    move-result-object v1

    return-object v1
.end method

.method public bridge synthetic minus(Lorg/threeten/bp/temporal/TemporalAmount;)Lorg/threeten/bp/chrono/ChronoPeriod;
    .locals 1
    .param p1, "x0"    # Lorg/threeten/bp/temporal/TemporalAmount;

    .prologue
    .line 91
    invoke-virtual {p0, p1}, Lorg/threeten/bp/Period;->minus(Lorg/threeten/bp/temporal/TemporalAmount;)Lorg/threeten/bp/Period;

    move-result-object v0

    return-object v0
.end method

.method public minusDays(J)Lorg/threeten/bp/Period;
    .locals 5
    .param p1, "daysToSubtract"    # J

    .prologue
    .line 688
    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Lorg/threeten/bp/Period;->plusDays(J)Lorg/threeten/bp/Period;

    move-result-object v0

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v2, v3}, Lorg/threeten/bp/Period;->plusDays(J)Lorg/threeten/bp/Period;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    neg-long v0, p1

    invoke-virtual {p0, v0, v1}, Lorg/threeten/bp/Period;->plusDays(J)Lorg/threeten/bp/Period;

    move-result-object v0

    goto :goto_0
.end method

.method public minusMonths(J)Lorg/threeten/bp/Period;
    .locals 5
    .param p1, "monthsToSubtract"    # J

    .prologue
    .line 671
    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Lorg/threeten/bp/Period;->plusMonths(J)Lorg/threeten/bp/Period;

    move-result-object v0

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v2, v3}, Lorg/threeten/bp/Period;->plusMonths(J)Lorg/threeten/bp/Period;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    neg-long v0, p1

    invoke-virtual {p0, v0, v1}, Lorg/threeten/bp/Period;->plusMonths(J)Lorg/threeten/bp/Period;

    move-result-object v0

    goto :goto_0
.end method

.method public minusYears(J)Lorg/threeten/bp/Period;
    .locals 5
    .param p1, "yearsToSubtract"    # J

    .prologue
    .line 654
    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Lorg/threeten/bp/Period;->plusYears(J)Lorg/threeten/bp/Period;

    move-result-object v0

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v2, v3}, Lorg/threeten/bp/Period;->plusYears(J)Lorg/threeten/bp/Period;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    neg-long v0, p1

    invoke-virtual {p0, v0, v1}, Lorg/threeten/bp/Period;->plusYears(J)Lorg/threeten/bp/Period;

    move-result-object v0

    goto :goto_0
.end method

.method public multipliedBy(I)Lorg/threeten/bp/Period;
    .locals 3
    .param p1, "scalar"    # I

    .prologue
    .line 704
    sget-object v0, Lorg/threeten/bp/Period;->ZERO:Lorg/threeten/bp/Period;

    if-eq p0, v0, :cond_0

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 707
    .end local p0    # "this":Lorg/threeten/bp/Period;
    :cond_0
    :goto_0
    return-object p0

    .restart local p0    # "this":Lorg/threeten/bp/Period;
    :cond_1
    iget v0, p0, Lorg/threeten/bp/Period;->years:I

    invoke-static {v0, p1}, Lorg/threeten/bp/jdk8/Jdk8Methods;->safeMultiply(II)I

    move-result v0

    iget v1, p0, Lorg/threeten/bp/Period;->months:I

    invoke-static {v1, p1}, Lorg/threeten/bp/jdk8/Jdk8Methods;->safeMultiply(II)I

    move-result v1

    iget v2, p0, Lorg/threeten/bp/Period;->days:I

    invoke-static {v2, p1}, Lorg/threeten/bp/jdk8/Jdk8Methods;->safeMultiply(II)I

    move-result v2

    invoke-static {v0, v1, v2}, Lorg/threeten/bp/Period;->create(III)Lorg/threeten/bp/Period;

    move-result-object p0

    goto :goto_0
.end method

.method public bridge synthetic multipliedBy(I)Lorg/threeten/bp/chrono/ChronoPeriod;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 91
    invoke-virtual {p0, p1}, Lorg/threeten/bp/Period;->multipliedBy(I)Lorg/threeten/bp/Period;

    move-result-object v0

    return-object v0
.end method

.method public negated()Lorg/threeten/bp/Period;
    .locals 1

    .prologue
    .line 720
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lorg/threeten/bp/Period;->multipliedBy(I)Lorg/threeten/bp/Period;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic negated()Lorg/threeten/bp/chrono/ChronoPeriod;
    .locals 1

    .prologue
    .line 91
    invoke-virtual {p0}, Lorg/threeten/bp/Period;->negated()Lorg/threeten/bp/Period;

    move-result-object v0

    return-object v0
.end method

.method public normalized()Lorg/threeten/bp/Period;
    .locals 8

    .prologue
    const-wide/16 v6, 0xc

    .line 745
    invoke-virtual {p0}, Lorg/threeten/bp/Period;->toTotalMonths()J

    move-result-wide v4

    .line 746
    .local v4, "totalMonths":J
    div-long v2, v4, v6

    .line 747
    .local v2, "splitYears":J
    rem-long v6, v4, v6

    long-to-int v0, v6

    .line 748
    .local v0, "splitMonths":I
    iget v1, p0, Lorg/threeten/bp/Period;->years:I

    int-to-long v6, v1

    cmp-long v1, v2, v6

    if-nez v1, :cond_0

    iget v1, p0, Lorg/threeten/bp/Period;->months:I

    if-ne v0, v1, :cond_0

    .line 751
    .end local p0    # "this":Lorg/threeten/bp/Period;
    :goto_0
    return-object p0

    .restart local p0    # "this":Lorg/threeten/bp/Period;
    :cond_0
    invoke-static {v2, v3}, Lorg/threeten/bp/jdk8/Jdk8Methods;->safeToInt(J)I

    move-result v1

    iget v6, p0, Lorg/threeten/bp/Period;->days:I

    invoke-static {v1, v0, v6}, Lorg/threeten/bp/Period;->create(III)Lorg/threeten/bp/Period;

    move-result-object p0

    goto :goto_0
.end method

.method public bridge synthetic normalized()Lorg/threeten/bp/chrono/ChronoPeriod;
    .locals 1

    .prologue
    .line 91
    invoke-virtual {p0}, Lorg/threeten/bp/Period;->normalized()Lorg/threeten/bp/Period;

    move-result-object v0

    return-object v0
.end method

.method public plus(Lorg/threeten/bp/temporal/TemporalAmount;)Lorg/threeten/bp/Period;
    .locals 5
    .param p1, "amountToAdd"    # Lorg/threeten/bp/temporal/TemporalAmount;

    .prologue
    .line 549
    invoke-static {p1}, Lorg/threeten/bp/Period;->from(Lorg/threeten/bp/temporal/TemporalAmount;)Lorg/threeten/bp/Period;

    move-result-object v0

    .line 550
    .local v0, "amount":Lorg/threeten/bp/Period;
    iget v1, p0, Lorg/threeten/bp/Period;->years:I

    iget v2, v0, Lorg/threeten/bp/Period;->years:I

    invoke-static {v1, v2}, Lorg/threeten/bp/jdk8/Jdk8Methods;->safeAdd(II)I

    move-result v1

    iget v2, p0, Lorg/threeten/bp/Period;->months:I

    iget v3, v0, Lorg/threeten/bp/Period;->months:I

    invoke-static {v2, v3}, Lorg/threeten/bp/jdk8/Jdk8Methods;->safeAdd(II)I

    move-result v2

    iget v3, p0, Lorg/threeten/bp/Period;->days:I

    iget v4, v0, Lorg/threeten/bp/Period;->days:I

    invoke-static {v3, v4}, Lorg/threeten/bp/jdk8/Jdk8Methods;->safeAdd(II)I

    move-result v3

    invoke-static {v1, v2, v3}, Lorg/threeten/bp/Period;->create(III)Lorg/threeten/bp/Period;

    move-result-object v1

    return-object v1
.end method

.method public bridge synthetic plus(Lorg/threeten/bp/temporal/TemporalAmount;)Lorg/threeten/bp/chrono/ChronoPeriod;
    .locals 1
    .param p1, "x0"    # Lorg/threeten/bp/temporal/TemporalAmount;

    .prologue
    .line 91
    invoke-virtual {p0, p1}, Lorg/threeten/bp/Period;->plus(Lorg/threeten/bp/temporal/TemporalAmount;)Lorg/threeten/bp/Period;

    move-result-object v0

    return-object v0
.end method

.method public plusDays(J)Lorg/threeten/bp/Period;
    .locals 5
    .param p1, "daysToAdd"    # J

    .prologue
    .line 610
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 613
    .end local p0    # "this":Lorg/threeten/bp/Period;
    :goto_0
    return-object p0

    .restart local p0    # "this":Lorg/threeten/bp/Period;
    :cond_0
    iget v0, p0, Lorg/threeten/bp/Period;->years:I

    iget v1, p0, Lorg/threeten/bp/Period;->months:I

    iget v2, p0, Lorg/threeten/bp/Period;->days:I

    int-to-long v2, v2

    invoke-static {v2, v3, p1, p2}, Lorg/threeten/bp/jdk8/Jdk8Methods;->safeAdd(JJ)J

    move-result-wide v2

    invoke-static {v2, v3}, Lorg/threeten/bp/jdk8/Jdk8Methods;->safeToInt(J)I

    move-result v2

    invoke-static {v0, v1, v2}, Lorg/threeten/bp/Period;->create(III)Lorg/threeten/bp/Period;

    move-result-object p0

    goto :goto_0
.end method

.method public plusMonths(J)Lorg/threeten/bp/Period;
    .locals 5
    .param p1, "monthsToAdd"    # J

    .prologue
    .line 590
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 593
    .end local p0    # "this":Lorg/threeten/bp/Period;
    :goto_0
    return-object p0

    .restart local p0    # "this":Lorg/threeten/bp/Period;
    :cond_0
    iget v0, p0, Lorg/threeten/bp/Period;->years:I

    iget v1, p0, Lorg/threeten/bp/Period;->months:I

    int-to-long v2, v1

    invoke-static {v2, v3, p1, p2}, Lorg/threeten/bp/jdk8/Jdk8Methods;->safeAdd(JJ)J

    move-result-wide v2

    invoke-static {v2, v3}, Lorg/threeten/bp/jdk8/Jdk8Methods;->safeToInt(J)I

    move-result v1

    iget v2, p0, Lorg/threeten/bp/Period;->days:I

    invoke-static {v0, v1, v2}, Lorg/threeten/bp/Period;->create(III)Lorg/threeten/bp/Period;

    move-result-object p0

    goto :goto_0
.end method

.method public plusYears(J)Lorg/threeten/bp/Period;
    .locals 3
    .param p1, "yearsToAdd"    # J

    .prologue
    .line 570
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 573
    .end local p0    # "this":Lorg/threeten/bp/Period;
    :goto_0
    return-object p0

    .restart local p0    # "this":Lorg/threeten/bp/Period;
    :cond_0
    iget v0, p0, Lorg/threeten/bp/Period;->years:I

    int-to-long v0, v0

    invoke-static {v0, v1, p1, p2}, Lorg/threeten/bp/jdk8/Jdk8Methods;->safeAdd(JJ)J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/threeten/bp/jdk8/Jdk8Methods;->safeToInt(J)I

    move-result v0

    iget v1, p0, Lorg/threeten/bp/Period;->months:I

    iget v2, p0, Lorg/threeten/bp/Period;->days:I

    invoke-static {v0, v1, v2}, Lorg/threeten/bp/Period;->create(III)Lorg/threeten/bp/Period;

    move-result-object p0

    goto :goto_0
.end method

.method public subtractFrom(Lorg/threeten/bp/temporal/Temporal;)Lorg/threeten/bp/temporal/Temporal;
    .locals 3
    .param p1, "temporal"    # Lorg/threeten/bp/temporal/Temporal;

    .prologue
    .line 849
    const-string v0, "temporal"

    invoke-static {p1, v0}, Lorg/threeten/bp/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 850
    iget v0, p0, Lorg/threeten/bp/Period;->years:I

    if-eqz v0, :cond_3

    .line 851
    iget v0, p0, Lorg/threeten/bp/Period;->months:I

    if-eqz v0, :cond_2

    .line 852
    invoke-virtual {p0}, Lorg/threeten/bp/Period;->toTotalMonths()J

    move-result-wide v0

    sget-object v2, Lorg/threeten/bp/temporal/ChronoUnit;->MONTHS:Lorg/threeten/bp/temporal/ChronoUnit;

    invoke-interface {p1, v0, v1, v2}, Lorg/threeten/bp/temporal/Temporal;->minus(JLorg/threeten/bp/temporal/TemporalUnit;)Lorg/threeten/bp/temporal/Temporal;

    move-result-object p1

    .line 859
    :cond_0
    :goto_0
    iget v0, p0, Lorg/threeten/bp/Period;->days:I

    if-eqz v0, :cond_1

    .line 860
    iget v0, p0, Lorg/threeten/bp/Period;->days:I

    int-to-long v0, v0

    sget-object v2, Lorg/threeten/bp/temporal/ChronoUnit;->DAYS:Lorg/threeten/bp/temporal/ChronoUnit;

    invoke-interface {p1, v0, v1, v2}, Lorg/threeten/bp/temporal/Temporal;->minus(JLorg/threeten/bp/temporal/TemporalUnit;)Lorg/threeten/bp/temporal/Temporal;

    move-result-object p1

    .line 862
    :cond_1
    return-object p1

    .line 854
    :cond_2
    iget v0, p0, Lorg/threeten/bp/Period;->years:I

    int-to-long v0, v0

    sget-object v2, Lorg/threeten/bp/temporal/ChronoUnit;->YEARS:Lorg/threeten/bp/temporal/ChronoUnit;

    invoke-interface {p1, v0, v1, v2}, Lorg/threeten/bp/temporal/Temporal;->minus(JLorg/threeten/bp/temporal/TemporalUnit;)Lorg/threeten/bp/temporal/Temporal;

    move-result-object p1

    goto :goto_0

    .line 856
    :cond_3
    iget v0, p0, Lorg/threeten/bp/Period;->months:I

    if-eqz v0, :cond_0

    .line 857
    iget v0, p0, Lorg/threeten/bp/Period;->months:I

    int-to-long v0, v0

    sget-object v2, Lorg/threeten/bp/temporal/ChronoUnit;->MONTHS:Lorg/threeten/bp/temporal/ChronoUnit;

    invoke-interface {p1, v0, v1, v2}, Lorg/threeten/bp/temporal/Temporal;->minus(JLorg/threeten/bp/temporal/TemporalUnit;)Lorg/threeten/bp/temporal/Temporal;

    move-result-object p1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 912
    sget-object v1, Lorg/threeten/bp/Period;->ZERO:Lorg/threeten/bp/Period;

    if-ne p0, v1, :cond_0

    .line 913
    const-string v1, "P0D"

    .line 926
    :goto_0
    return-object v1

    .line 915
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 916
    .local v0, "buf":Ljava/lang/StringBuilder;
    const/16 v1, 0x50

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 917
    iget v1, p0, Lorg/threeten/bp/Period;->years:I

    if-eqz v1, :cond_1

    .line 918
    iget v1, p0, Lorg/threeten/bp/Period;->years:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x59

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 920
    :cond_1
    iget v1, p0, Lorg/threeten/bp/Period;->months:I

    if-eqz v1, :cond_2

    .line 921
    iget v1, p0, Lorg/threeten/bp/Period;->months:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x4d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 923
    :cond_2
    iget v1, p0, Lorg/threeten/bp/Period;->days:I

    if-eqz v1, :cond_3

    .line 924
    iget v1, p0, Lorg/threeten/bp/Period;->days:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x44

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 926
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public toTotalMonths()J
    .locals 4

    .prologue
    .line 767
    iget v0, p0, Lorg/threeten/bp/Period;->years:I

    int-to-long v0, v0

    const-wide/16 v2, 0xc

    mul-long/2addr v0, v2

    iget v2, p0, Lorg/threeten/bp/Period;->months:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public withDays(I)Lorg/threeten/bp/Period;
    .locals 2
    .param p1, "days"    # I

    .prologue
    .line 526
    iget v0, p0, Lorg/threeten/bp/Period;->days:I

    if-ne p1, v0, :cond_0

    .line 529
    .end local p0    # "this":Lorg/threeten/bp/Period;
    :goto_0
    return-object p0

    .restart local p0    # "this":Lorg/threeten/bp/Period;
    :cond_0
    iget v0, p0, Lorg/threeten/bp/Period;->years:I

    iget v1, p0, Lorg/threeten/bp/Period;->months:I

    invoke-static {v0, v1, p1}, Lorg/threeten/bp/Period;->create(III)Lorg/threeten/bp/Period;

    move-result-object p0

    goto :goto_0
.end method

.method public withMonths(I)Lorg/threeten/bp/Period;
    .locals 2
    .param p1, "months"    # I

    .prologue
    .line 508
    iget v0, p0, Lorg/threeten/bp/Period;->months:I

    if-ne p1, v0, :cond_0

    .line 511
    .end local p0    # "this":Lorg/threeten/bp/Period;
    :goto_0
    return-object p0

    .restart local p0    # "this":Lorg/threeten/bp/Period;
    :cond_0
    iget v0, p0, Lorg/threeten/bp/Period;->years:I

    iget v1, p0, Lorg/threeten/bp/Period;->days:I

    invoke-static {v0, p1, v1}, Lorg/threeten/bp/Period;->create(III)Lorg/threeten/bp/Period;

    move-result-object p0

    goto :goto_0
.end method

.method public withYears(I)Lorg/threeten/bp/Period;
    .locals 2
    .param p1, "years"    # I

    .prologue
    .line 486
    iget v0, p0, Lorg/threeten/bp/Period;->years:I

    if-ne p1, v0, :cond_0

    .line 489
    .end local p0    # "this":Lorg/threeten/bp/Period;
    :goto_0
    return-object p0

    .restart local p0    # "this":Lorg/threeten/bp/Period;
    :cond_0
    iget v0, p0, Lorg/threeten/bp/Period;->months:I

    iget v1, p0, Lorg/threeten/bp/Period;->days:I

    invoke-static {p1, v0, v1}, Lorg/threeten/bp/Period;->create(III)Lorg/threeten/bp/Period;

    move-result-object p0

    goto :goto_0
.end method
