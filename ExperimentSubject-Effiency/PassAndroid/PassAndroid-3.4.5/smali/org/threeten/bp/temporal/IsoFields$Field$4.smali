.class final enum Lorg/threeten/bp/temporal/IsoFields$Field$4;
.super Lorg/threeten/bp/temporal/IsoFields$Field;
.source "IsoFields.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/threeten/bp/temporal/IsoFields$Field;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 425
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/threeten/bp/temporal/IsoFields$Field;-><init>(Ljava/lang/String;ILorg/threeten/bp/temporal/IsoFields$1;)V

    return-void
.end method


# virtual methods
.method public adjustInto(Lorg/threeten/bp/temporal/Temporal;J)Lorg/threeten/bp/temporal/Temporal;
    .locals 8
    .param p2, "newValue"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R::",
            "Lorg/threeten/bp/temporal/Temporal;",
            ">(TR;J)TR;"
        }
    .end annotation

    .prologue
    .line 460
    .local p1, "temporal":Lorg/threeten/bp/temporal/Temporal;, "TR;"
    invoke-virtual {p0, p1}, Lorg/threeten/bp/temporal/IsoFields$Field$4;->isSupportedBy(Lorg/threeten/bp/temporal/TemporalAccessor;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 461
    new-instance v6, Lorg/threeten/bp/temporal/UnsupportedTemporalTypeException;

    const-string v7, "Unsupported field: WeekBasedYear"

    invoke-direct {v6, v7}, Lorg/threeten/bp/temporal/UnsupportedTemporalTypeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 463
    :cond_0
    invoke-virtual {p0}, Lorg/threeten/bp/temporal/IsoFields$Field$4;->range()Lorg/threeten/bp/temporal/ValueRange;

    move-result-object v6

    sget-object v7, Lorg/threeten/bp/temporal/IsoFields$Field$4;->WEEK_BASED_YEAR:Lorg/threeten/bp/temporal/IsoFields$Field;

    invoke-virtual {v6, p2, p3, v7}, Lorg/threeten/bp/temporal/ValueRange;->checkValidIntValue(JLorg/threeten/bp/temporal/TemporalField;)I

    move-result v3

    .line 464
    .local v3, "newWby":I
    invoke-static {p1}, Lorg/threeten/bp/LocalDate;->from(Lorg/threeten/bp/temporal/TemporalAccessor;)Lorg/threeten/bp/LocalDate;

    move-result-object v0

    .line 465
    .local v0, "date":Lorg/threeten/bp/LocalDate;
    sget-object v6, Lorg/threeten/bp/temporal/ChronoField;->DAY_OF_WEEK:Lorg/threeten/bp/temporal/ChronoField;

    invoke-virtual {v0, v6}, Lorg/threeten/bp/LocalDate;->get(Lorg/threeten/bp/temporal/TemporalField;)I

    move-result v2

    .line 466
    .local v2, "dow":I
    # invokes: Lorg/threeten/bp/temporal/IsoFields$Field;->getWeek(Lorg/threeten/bp/LocalDate;)I
    invoke-static {v0}, Lorg/threeten/bp/temporal/IsoFields$Field;->access$400(Lorg/threeten/bp/LocalDate;)I

    move-result v5

    .line 467
    .local v5, "week":I
    const/16 v6, 0x35

    if-ne v5, v6, :cond_1

    # invokes: Lorg/threeten/bp/temporal/IsoFields$Field;->getWeekRange(I)I
    invoke-static {v3}, Lorg/threeten/bp/temporal/IsoFields$Field;->access$600(I)I

    move-result v6

    const/16 v7, 0x34

    if-ne v6, v7, :cond_1

    .line 468
    const/16 v5, 0x34

    .line 470
    :cond_1
    const/4 v6, 0x1

    const/4 v7, 0x4

    invoke-static {v3, v6, v7}, Lorg/threeten/bp/LocalDate;->of(III)Lorg/threeten/bp/LocalDate;

    move-result-object v4

    .line 471
    .local v4, "resolved":Lorg/threeten/bp/LocalDate;
    sget-object v6, Lorg/threeten/bp/temporal/ChronoField;->DAY_OF_WEEK:Lorg/threeten/bp/temporal/ChronoField;

    invoke-virtual {v4, v6}, Lorg/threeten/bp/LocalDate;->get(Lorg/threeten/bp/temporal/TemporalField;)I

    move-result v6

    sub-int v6, v2, v6

    add-int/lit8 v7, v5, -0x1

    mul-int/lit8 v7, v7, 0x7

    add-int v1, v6, v7

    .line 472
    .local v1, "days":I
    int-to-long v6, v1

    invoke-virtual {v4, v6, v7}, Lorg/threeten/bp/LocalDate;->plusDays(J)Lorg/threeten/bp/LocalDate;

    move-result-object v4

    .line 473
    invoke-interface {p1, v4}, Lorg/threeten/bp/temporal/Temporal;->with(Lorg/threeten/bp/temporal/TemporalAdjuster;)Lorg/threeten/bp/temporal/Temporal;

    move-result-object v6

    return-object v6
.end method

.method public getBaseUnit()Lorg/threeten/bp/temporal/TemporalUnit;
    .locals 1

    .prologue
    .line 432
    sget-object v0, Lorg/threeten/bp/temporal/IsoFields;->WEEK_BASED_YEARS:Lorg/threeten/bp/temporal/TemporalUnit;

    return-object v0
.end method

.method public getFrom(Lorg/threeten/bp/temporal/TemporalAccessor;)J
    .locals 2
    .param p1, "temporal"    # Lorg/threeten/bp/temporal/TemporalAccessor;

    .prologue
    .line 452
    invoke-interface {p1, p0}, Lorg/threeten/bp/temporal/TemporalAccessor;->isSupported(Lorg/threeten/bp/temporal/TemporalField;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 453
    new-instance v0, Lorg/threeten/bp/temporal/UnsupportedTemporalTypeException;

    const-string v1, "Unsupported field: WeekBasedYear"

    invoke-direct {v0, v1}, Lorg/threeten/bp/temporal/UnsupportedTemporalTypeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 455
    :cond_0
    invoke-static {p1}, Lorg/threeten/bp/LocalDate;->from(Lorg/threeten/bp/temporal/TemporalAccessor;)Lorg/threeten/bp/LocalDate;

    move-result-object v0

    # invokes: Lorg/threeten/bp/temporal/IsoFields$Field;->getWeekBasedYear(Lorg/threeten/bp/LocalDate;)I
    invoke-static {v0}, Lorg/threeten/bp/temporal/IsoFields$Field;->access$500(Lorg/threeten/bp/LocalDate;)I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public getRangeUnit()Lorg/threeten/bp/temporal/TemporalUnit;
    .locals 1

    .prologue
    .line 436
    sget-object v0, Lorg/threeten/bp/temporal/ChronoUnit;->FOREVER:Lorg/threeten/bp/temporal/ChronoUnit;

    return-object v0
.end method

.method public isSupportedBy(Lorg/threeten/bp/temporal/TemporalAccessor;)Z
    .locals 1
    .param p1, "temporal"    # Lorg/threeten/bp/temporal/TemporalAccessor;

    .prologue
    .line 444
    sget-object v0, Lorg/threeten/bp/temporal/ChronoField;->EPOCH_DAY:Lorg/threeten/bp/temporal/ChronoField;

    invoke-interface {p1, v0}, Lorg/threeten/bp/temporal/TemporalAccessor;->isSupported(Lorg/threeten/bp/temporal/TemporalField;)Z

    move-result v0

    if-eqz v0, :cond_0

    # invokes: Lorg/threeten/bp/temporal/IsoFields$Field;->isIso(Lorg/threeten/bp/temporal/TemporalAccessor;)Z
    invoke-static {p1}, Lorg/threeten/bp/temporal/IsoFields$Field;->access$100(Lorg/threeten/bp/temporal/TemporalAccessor;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public range()Lorg/threeten/bp/temporal/ValueRange;
    .locals 1

    .prologue
    .line 440
    sget-object v0, Lorg/threeten/bp/temporal/ChronoField;->YEAR:Lorg/threeten/bp/temporal/ChronoField;

    invoke-virtual {v0}, Lorg/threeten/bp/temporal/ChronoField;->range()Lorg/threeten/bp/temporal/ValueRange;

    move-result-object v0

    return-object v0
.end method

.method public rangeRefinedBy(Lorg/threeten/bp/temporal/TemporalAccessor;)Lorg/threeten/bp/temporal/ValueRange;
    .locals 1
    .param p1, "temporal"    # Lorg/threeten/bp/temporal/TemporalAccessor;

    .prologue
    .line 448
    sget-object v0, Lorg/threeten/bp/temporal/ChronoField;->YEAR:Lorg/threeten/bp/temporal/ChronoField;

    invoke-virtual {v0}, Lorg/threeten/bp/temporal/ChronoField;->range()Lorg/threeten/bp/temporal/ValueRange;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 428
    const-string v0, "WeekBasedYear"

    return-object v0
.end method
