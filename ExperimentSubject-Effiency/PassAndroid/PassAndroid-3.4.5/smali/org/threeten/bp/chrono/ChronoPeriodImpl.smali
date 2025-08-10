.class final Lorg/threeten/bp/chrono/ChronoPeriodImpl;
.super Lorg/threeten/bp/chrono/ChronoPeriod;
.source "ChronoPeriodImpl.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x402c2826a5L


# instance fields
.field private final chronology:Lorg/threeten/bp/chrono/Chronology;

.field private final days:I

.field private final months:I

.field private final years:I


# direct methods
.method public constructor <init>(Lorg/threeten/bp/chrono/Chronology;III)V
    .locals 0
    .param p1, "chronology"    # Lorg/threeten/bp/chrono/Chronology;
    .param p2, "years"    # I
    .param p3, "months"    # I
    .param p4, "days"    # I

    .prologue
    .line 69
    invoke-direct {p0}, Lorg/threeten/bp/chrono/ChronoPeriod;-><init>()V

    .line 70
    iput-object p1, p0, Lorg/threeten/bp/chrono/ChronoPeriodImpl;->chronology:Lorg/threeten/bp/chrono/Chronology;

    .line 71
    iput p2, p0, Lorg/threeten/bp/chrono/ChronoPeriodImpl;->years:I

    .line 72
    iput p3, p0, Lorg/threeten/bp/chrono/ChronoPeriodImpl;->months:I

    .line 73
    iput p4, p0, Lorg/threeten/bp/chrono/ChronoPeriodImpl;->days:I

    .line 74
    return-void
.end method


# virtual methods
.method public addTo(Lorg/threeten/bp/temporal/Temporal;)Lorg/threeten/bp/temporal/Temporal;
    .locals 4
    .param p1, "temporal"    # Lorg/threeten/bp/temporal/Temporal;

    .prologue
    .line 155
    const-string v1, "temporal"

    invoke-static {p1, v1}, Lorg/threeten/bp/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 156
    invoke-static {}, Lorg/threeten/bp/temporal/TemporalQueries;->chronology()Lorg/threeten/bp/temporal/TemporalQuery;

    move-result-object v1

    invoke-interface {p1, v1}, Lorg/threeten/bp/temporal/Temporal;->query(Lorg/threeten/bp/temporal/TemporalQuery;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/threeten/bp/chrono/Chronology;

    .line 157
    .local v0, "temporalChrono":Lorg/threeten/bp/chrono/Chronology;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/threeten/bp/chrono/ChronoPeriodImpl;->chronology:Lorg/threeten/bp/chrono/Chronology;

    invoke-virtual {v1, v0}, Lorg/threeten/bp/chrono/Chronology;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 158
    new-instance v1, Lorg/threeten/bp/DateTimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid chronology, required: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/threeten/bp/chrono/ChronoPeriodImpl;->chronology:Lorg/threeten/bp/chrono/Chronology;

    invoke-virtual {v3}, Lorg/threeten/bp/chrono/Chronology;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", but was: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lorg/threeten/bp/chrono/Chronology;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/threeten/bp/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 160
    :cond_0
    iget v1, p0, Lorg/threeten/bp/chrono/ChronoPeriodImpl;->years:I

    if-eqz v1, :cond_1

    .line 161
    iget v1, p0, Lorg/threeten/bp/chrono/ChronoPeriodImpl;->years:I

    int-to-long v2, v1

    sget-object v1, Lorg/threeten/bp/temporal/ChronoUnit;->YEARS:Lorg/threeten/bp/temporal/ChronoUnit;

    invoke-interface {p1, v2, v3, v1}, Lorg/threeten/bp/temporal/Temporal;->plus(JLorg/threeten/bp/temporal/TemporalUnit;)Lorg/threeten/bp/temporal/Temporal;

    move-result-object p1

    .line 163
    :cond_1
    iget v1, p0, Lorg/threeten/bp/chrono/ChronoPeriodImpl;->months:I

    if-eqz v1, :cond_2

    .line 164
    iget v1, p0, Lorg/threeten/bp/chrono/ChronoPeriodImpl;->months:I

    int-to-long v2, v1

    sget-object v1, Lorg/threeten/bp/temporal/ChronoUnit;->MONTHS:Lorg/threeten/bp/temporal/ChronoUnit;

    invoke-interface {p1, v2, v3, v1}, Lorg/threeten/bp/temporal/Temporal;->plus(JLorg/threeten/bp/temporal/TemporalUnit;)Lorg/threeten/bp/temporal/Temporal;

    move-result-object p1

    .line 166
    :cond_2
    iget v1, p0, Lorg/threeten/bp/chrono/ChronoPeriodImpl;->days:I

    if-eqz v1, :cond_3

    .line 167
    iget v1, p0, Lorg/threeten/bp/chrono/ChronoPeriodImpl;->days:I

    int-to-long v2, v1

    sget-object v1, Lorg/threeten/bp/temporal/ChronoUnit;->DAYS:Lorg/threeten/bp/temporal/ChronoUnit;

    invoke-interface {p1, v2, v3, v1}, Lorg/threeten/bp/temporal/Temporal;->plus(JLorg/threeten/bp/temporal/TemporalUnit;)Lorg/threeten/bp/temporal/Temporal;

    move-result-object p1

    .line 169
    :cond_3
    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 194
    if-ne p0, p1, :cond_1

    .line 202
    :cond_0
    :goto_0
    return v1

    .line 197
    :cond_1
    instance-of v3, p1, Lorg/threeten/bp/chrono/ChronoPeriodImpl;

    if-eqz v3, :cond_3

    move-object v0, p1

    .line 198
    check-cast v0, Lorg/threeten/bp/chrono/ChronoPeriodImpl;

    .line 199
    .local v0, "other":Lorg/threeten/bp/chrono/ChronoPeriodImpl;
    iget v3, p0, Lorg/threeten/bp/chrono/ChronoPeriodImpl;->years:I

    iget v4, v0, Lorg/threeten/bp/chrono/ChronoPeriodImpl;->years:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Lorg/threeten/bp/chrono/ChronoPeriodImpl;->months:I

    iget v4, v0, Lorg/threeten/bp/chrono/ChronoPeriodImpl;->months:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Lorg/threeten/bp/chrono/ChronoPeriodImpl;->days:I

    iget v4, v0, Lorg/threeten/bp/chrono/ChronoPeriodImpl;->days:I

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Lorg/threeten/bp/chrono/ChronoPeriodImpl;->chronology:Lorg/threeten/bp/chrono/Chronology;

    iget-object v4, v0, Lorg/threeten/bp/chrono/ChronoPeriodImpl;->chronology:Lorg/threeten/bp/chrono/Chronology;

    invoke-virtual {v3, v4}, Lorg/threeten/bp/chrono/Chronology;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_2
    move v1, v2

    goto :goto_0

    .end local v0    # "other":Lorg/threeten/bp/chrono/ChronoPeriodImpl;
    :cond_3
    move v1, v2

    .line 202
    goto :goto_0
.end method

.method public get(Lorg/threeten/bp/temporal/TemporalUnit;)J
    .locals 3
    .param p1, "unit"    # Lorg/threeten/bp/temporal/TemporalUnit;

    .prologue
    .line 79
    sget-object v0, Lorg/threeten/bp/temporal/ChronoUnit;->YEARS:Lorg/threeten/bp/temporal/ChronoUnit;

    if-ne p1, v0, :cond_0

    .line 80
    iget v0, p0, Lorg/threeten/bp/chrono/ChronoPeriodImpl;->years:I

    int-to-long v0, v0

    .line 86
    :goto_0
    return-wide v0

    .line 82
    :cond_0
    sget-object v0, Lorg/threeten/bp/temporal/ChronoUnit;->MONTHS:Lorg/threeten/bp/temporal/ChronoUnit;

    if-ne p1, v0, :cond_1

    .line 83
    iget v0, p0, Lorg/threeten/bp/chrono/ChronoPeriodImpl;->months:I

    int-to-long v0, v0

    goto :goto_0

    .line 85
    :cond_1
    sget-object v0, Lorg/threeten/bp/temporal/ChronoUnit;->DAYS:Lorg/threeten/bp/temporal/ChronoUnit;

    if-ne p1, v0, :cond_2

    .line 86
    iget v0, p0, Lorg/threeten/bp/chrono/ChronoPeriodImpl;->days:I

    int-to-long v0, v0

    goto :goto_0

    .line 88
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
    .line 98
    iget-object v0, p0, Lorg/threeten/bp/chrono/ChronoPeriodImpl;->chronology:Lorg/threeten/bp/chrono/Chronology;

    return-object v0
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
    .line 93
    const/4 v0, 0x3

    new-array v0, v0, [Lorg/threeten/bp/temporal/TemporalUnit;

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

.method public hashCode()I
    .locals 3

    .prologue
    .line 207
    iget-object v0, p0, Lorg/threeten/bp/chrono/ChronoPeriodImpl;->chronology:Lorg/threeten/bp/chrono/Chronology;

    invoke-virtual {v0}, Lorg/threeten/bp/chrono/Chronology;->hashCode()I

    move-result v0

    iget v1, p0, Lorg/threeten/bp/chrono/ChronoPeriodImpl;->years:I

    const/16 v2, 0x10

    invoke-static {v1, v2}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Lorg/threeten/bp/chrono/ChronoPeriodImpl;->months:I

    const/16 v2, 0x8

    invoke-static {v1, v2}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Lorg/threeten/bp/chrono/ChronoPeriodImpl;->days:I

    add-int/2addr v0, v1

    return v0
.end method

.method public minus(Lorg/threeten/bp/temporal/TemporalAmount;)Lorg/threeten/bp/chrono/ChronoPeriod;
    .locals 7
    .param p1, "amountToSubtract"    # Lorg/threeten/bp/temporal/TemporalAmount;

    .prologue
    .line 119
    instance-of v1, p1, Lorg/threeten/bp/chrono/ChronoPeriodImpl;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 120
    check-cast v0, Lorg/threeten/bp/chrono/ChronoPeriodImpl;

    .line 121
    .local v0, "amount":Lorg/threeten/bp/chrono/ChronoPeriodImpl;
    invoke-virtual {v0}, Lorg/threeten/bp/chrono/ChronoPeriodImpl;->getChronology()Lorg/threeten/bp/chrono/Chronology;

    move-result-object v1

    invoke-virtual {p0}, Lorg/threeten/bp/chrono/ChronoPeriodImpl;->getChronology()Lorg/threeten/bp/chrono/Chronology;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/threeten/bp/chrono/Chronology;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 122
    new-instance v1, Lorg/threeten/bp/chrono/ChronoPeriodImpl;

    iget-object v2, p0, Lorg/threeten/bp/chrono/ChronoPeriodImpl;->chronology:Lorg/threeten/bp/chrono/Chronology;

    iget v3, p0, Lorg/threeten/bp/chrono/ChronoPeriodImpl;->years:I

    iget v4, v0, Lorg/threeten/bp/chrono/ChronoPeriodImpl;->years:I

    invoke-static {v3, v4}, Lorg/threeten/bp/jdk8/Jdk8Methods;->safeSubtract(II)I

    move-result v3

    iget v4, p0, Lorg/threeten/bp/chrono/ChronoPeriodImpl;->months:I

    iget v5, v0, Lorg/threeten/bp/chrono/ChronoPeriodImpl;->months:I

    invoke-static {v4, v5}, Lorg/threeten/bp/jdk8/Jdk8Methods;->safeSubtract(II)I

    move-result v4

    iget v5, p0, Lorg/threeten/bp/chrono/ChronoPeriodImpl;->days:I

    iget v6, v0, Lorg/threeten/bp/chrono/ChronoPeriodImpl;->days:I

    invoke-static {v5, v6}, Lorg/threeten/bp/jdk8/Jdk8Methods;->safeSubtract(II)I

    move-result v5

    invoke-direct {v1, v2, v3, v4, v5}, Lorg/threeten/bp/chrono/ChronoPeriodImpl;-><init>(Lorg/threeten/bp/chrono/Chronology;III)V

    return-object v1

    .line 129
    .end local v0    # "amount":Lorg/threeten/bp/chrono/ChronoPeriodImpl;
    :cond_0
    new-instance v1, Lorg/threeten/bp/DateTimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to subtract amount: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/threeten/bp/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public multipliedBy(I)Lorg/threeten/bp/chrono/ChronoPeriod;
    .locals 5
    .param p1, "scalar"    # I

    .prologue
    .line 134
    new-instance v0, Lorg/threeten/bp/chrono/ChronoPeriodImpl;

    iget-object v1, p0, Lorg/threeten/bp/chrono/ChronoPeriodImpl;->chronology:Lorg/threeten/bp/chrono/Chronology;

    iget v2, p0, Lorg/threeten/bp/chrono/ChronoPeriodImpl;->years:I

    invoke-static {v2, p1}, Lorg/threeten/bp/jdk8/Jdk8Methods;->safeMultiply(II)I

    move-result v2

    iget v3, p0, Lorg/threeten/bp/chrono/ChronoPeriodImpl;->months:I

    invoke-static {v3, p1}, Lorg/threeten/bp/jdk8/Jdk8Methods;->safeMultiply(II)I

    move-result v3

    iget v4, p0, Lorg/threeten/bp/chrono/ChronoPeriodImpl;->days:I

    invoke-static {v4, p1}, Lorg/threeten/bp/jdk8/Jdk8Methods;->safeMultiply(II)I

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/threeten/bp/chrono/ChronoPeriodImpl;-><init>(Lorg/threeten/bp/chrono/Chronology;III)V

    return-object v0
.end method

.method public normalized()Lorg/threeten/bp/chrono/ChronoPeriod;
    .locals 10

    .prologue
    .line 143
    iget-object v6, p0, Lorg/threeten/bp/chrono/ChronoPeriodImpl;->chronology:Lorg/threeten/bp/chrono/Chronology;

    sget-object v7, Lorg/threeten/bp/temporal/ChronoField;->MONTH_OF_YEAR:Lorg/threeten/bp/temporal/ChronoField;

    invoke-virtual {v6, v7}, Lorg/threeten/bp/chrono/Chronology;->range(Lorg/threeten/bp/temporal/ChronoField;)Lorg/threeten/bp/temporal/ValueRange;

    move-result-object v6

    invoke-virtual {v6}, Lorg/threeten/bp/temporal/ValueRange;->isFixed()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 144
    iget-object v6, p0, Lorg/threeten/bp/chrono/ChronoPeriodImpl;->chronology:Lorg/threeten/bp/chrono/Chronology;

    sget-object v7, Lorg/threeten/bp/temporal/ChronoField;->MONTH_OF_YEAR:Lorg/threeten/bp/temporal/ChronoField;

    invoke-virtual {v6, v7}, Lorg/threeten/bp/chrono/Chronology;->range(Lorg/threeten/bp/temporal/ChronoField;)Lorg/threeten/bp/temporal/ValueRange;

    move-result-object v6

    invoke-virtual {v6}, Lorg/threeten/bp/temporal/ValueRange;->getMaximum()J

    move-result-wide v6

    iget-object v8, p0, Lorg/threeten/bp/chrono/ChronoPeriodImpl;->chronology:Lorg/threeten/bp/chrono/Chronology;

    sget-object v9, Lorg/threeten/bp/temporal/ChronoField;->MONTH_OF_YEAR:Lorg/threeten/bp/temporal/ChronoField;

    invoke-virtual {v8, v9}, Lorg/threeten/bp/chrono/Chronology;->range(Lorg/threeten/bp/temporal/ChronoField;)Lorg/threeten/bp/temporal/ValueRange;

    move-result-object v8

    invoke-virtual {v8}, Lorg/threeten/bp/temporal/ValueRange;->getMinimum()J

    move-result-wide v8

    sub-long/2addr v6, v8

    const-wide/16 v8, 0x1

    add-long v0, v6, v8

    .line 145
    .local v0, "monthLength":J
    iget v6, p0, Lorg/threeten/bp/chrono/ChronoPeriodImpl;->years:I

    int-to-long v6, v6

    mul-long/2addr v6, v0

    iget v8, p0, Lorg/threeten/bp/chrono/ChronoPeriodImpl;->months:I

    int-to-long v8, v8

    add-long v4, v6, v8

    .line 146
    .local v4, "total":J
    div-long v6, v4, v0

    invoke-static {v6, v7}, Lorg/threeten/bp/jdk8/Jdk8Methods;->safeToInt(J)I

    move-result v3

    .line 147
    .local v3, "years":I
    rem-long v6, v4, v0

    invoke-static {v6, v7}, Lorg/threeten/bp/jdk8/Jdk8Methods;->safeToInt(J)I

    move-result v2

    .line 148
    .local v2, "months":I
    new-instance v6, Lorg/threeten/bp/chrono/ChronoPeriodImpl;

    iget-object v7, p0, Lorg/threeten/bp/chrono/ChronoPeriodImpl;->chronology:Lorg/threeten/bp/chrono/Chronology;

    iget v8, p0, Lorg/threeten/bp/chrono/ChronoPeriodImpl;->days:I

    invoke-direct {v6, v7, v3, v2, v8}, Lorg/threeten/bp/chrono/ChronoPeriodImpl;-><init>(Lorg/threeten/bp/chrono/Chronology;III)V

    move-object p0, v6

    .line 150
    .end local v0    # "monthLength":J
    .end local v2    # "months":I
    .end local v3    # "years":I
    .end local v4    # "total":J
    .end local p0    # "this":Lorg/threeten/bp/chrono/ChronoPeriodImpl;
    :cond_0
    return-object p0
.end method

.method public plus(Lorg/threeten/bp/temporal/TemporalAmount;)Lorg/threeten/bp/chrono/ChronoPeriod;
    .locals 7
    .param p1, "amountToAdd"    # Lorg/threeten/bp/temporal/TemporalAmount;

    .prologue
    .line 104
    instance-of v1, p1, Lorg/threeten/bp/chrono/ChronoPeriodImpl;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 105
    check-cast v0, Lorg/threeten/bp/chrono/ChronoPeriodImpl;

    .line 106
    .local v0, "amount":Lorg/threeten/bp/chrono/ChronoPeriodImpl;
    invoke-virtual {v0}, Lorg/threeten/bp/chrono/ChronoPeriodImpl;->getChronology()Lorg/threeten/bp/chrono/Chronology;

    move-result-object v1

    invoke-virtual {p0}, Lorg/threeten/bp/chrono/ChronoPeriodImpl;->getChronology()Lorg/threeten/bp/chrono/Chronology;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/threeten/bp/chrono/Chronology;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 107
    new-instance v1, Lorg/threeten/bp/chrono/ChronoPeriodImpl;

    iget-object v2, p0, Lorg/threeten/bp/chrono/ChronoPeriodImpl;->chronology:Lorg/threeten/bp/chrono/Chronology;

    iget v3, p0, Lorg/threeten/bp/chrono/ChronoPeriodImpl;->years:I

    iget v4, v0, Lorg/threeten/bp/chrono/ChronoPeriodImpl;->years:I

    invoke-static {v3, v4}, Lorg/threeten/bp/jdk8/Jdk8Methods;->safeAdd(II)I

    move-result v3

    iget v4, p0, Lorg/threeten/bp/chrono/ChronoPeriodImpl;->months:I

    iget v5, v0, Lorg/threeten/bp/chrono/ChronoPeriodImpl;->months:I

    invoke-static {v4, v5}, Lorg/threeten/bp/jdk8/Jdk8Methods;->safeAdd(II)I

    move-result v4

    iget v5, p0, Lorg/threeten/bp/chrono/ChronoPeriodImpl;->days:I

    iget v6, v0, Lorg/threeten/bp/chrono/ChronoPeriodImpl;->days:I

    invoke-static {v5, v6}, Lorg/threeten/bp/jdk8/Jdk8Methods;->safeAdd(II)I

    move-result v5

    invoke-direct {v1, v2, v3, v4, v5}, Lorg/threeten/bp/chrono/ChronoPeriodImpl;-><init>(Lorg/threeten/bp/chrono/Chronology;III)V

    return-object v1

    .line 114
    .end local v0    # "amount":Lorg/threeten/bp/chrono/ChronoPeriodImpl;
    :cond_0
    new-instance v1, Lorg/threeten/bp/DateTimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to add amount: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/threeten/bp/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public subtractFrom(Lorg/threeten/bp/temporal/Temporal;)Lorg/threeten/bp/temporal/Temporal;
    .locals 4
    .param p1, "temporal"    # Lorg/threeten/bp/temporal/Temporal;

    .prologue
    .line 174
    const-string v1, "temporal"

    invoke-static {p1, v1}, Lorg/threeten/bp/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 175
    invoke-static {}, Lorg/threeten/bp/temporal/TemporalQueries;->chronology()Lorg/threeten/bp/temporal/TemporalQuery;

    move-result-object v1

    invoke-interface {p1, v1}, Lorg/threeten/bp/temporal/Temporal;->query(Lorg/threeten/bp/temporal/TemporalQuery;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/threeten/bp/chrono/Chronology;

    .line 176
    .local v0, "temporalChrono":Lorg/threeten/bp/chrono/Chronology;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/threeten/bp/chrono/ChronoPeriodImpl;->chronology:Lorg/threeten/bp/chrono/Chronology;

    invoke-virtual {v1, v0}, Lorg/threeten/bp/chrono/Chronology;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 177
    new-instance v1, Lorg/threeten/bp/DateTimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid chronology, required: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/threeten/bp/chrono/ChronoPeriodImpl;->chronology:Lorg/threeten/bp/chrono/Chronology;

    invoke-virtual {v3}, Lorg/threeten/bp/chrono/Chronology;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", but was: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lorg/threeten/bp/chrono/Chronology;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/threeten/bp/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 179
    :cond_0
    iget v1, p0, Lorg/threeten/bp/chrono/ChronoPeriodImpl;->years:I

    if-eqz v1, :cond_1

    .line 180
    iget v1, p0, Lorg/threeten/bp/chrono/ChronoPeriodImpl;->years:I

    int-to-long v2, v1

    sget-object v1, Lorg/threeten/bp/temporal/ChronoUnit;->YEARS:Lorg/threeten/bp/temporal/ChronoUnit;

    invoke-interface {p1, v2, v3, v1}, Lorg/threeten/bp/temporal/Temporal;->minus(JLorg/threeten/bp/temporal/TemporalUnit;)Lorg/threeten/bp/temporal/Temporal;

    move-result-object p1

    .line 182
    :cond_1
    iget v1, p0, Lorg/threeten/bp/chrono/ChronoPeriodImpl;->months:I

    if-eqz v1, :cond_2

    .line 183
    iget v1, p0, Lorg/threeten/bp/chrono/ChronoPeriodImpl;->months:I

    int-to-long v2, v1

    sget-object v1, Lorg/threeten/bp/temporal/ChronoUnit;->MONTHS:Lorg/threeten/bp/temporal/ChronoUnit;

    invoke-interface {p1, v2, v3, v1}, Lorg/threeten/bp/temporal/Temporal;->minus(JLorg/threeten/bp/temporal/TemporalUnit;)Lorg/threeten/bp/temporal/Temporal;

    move-result-object p1

    .line 185
    :cond_2
    iget v1, p0, Lorg/threeten/bp/chrono/ChronoPeriodImpl;->days:I

    if-eqz v1, :cond_3

    .line 186
    iget v1, p0, Lorg/threeten/bp/chrono/ChronoPeriodImpl;->days:I

    int-to-long v2, v1

    sget-object v1, Lorg/threeten/bp/temporal/ChronoUnit;->DAYS:Lorg/threeten/bp/temporal/ChronoUnit;

    invoke-interface {p1, v2, v3, v1}, Lorg/threeten/bp/temporal/Temporal;->minus(JLorg/threeten/bp/temporal/TemporalUnit;)Lorg/threeten/bp/temporal/Temporal;

    move-result-object p1

    .line 188
    :cond_3
    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 212
    invoke-virtual {p0}, Lorg/threeten/bp/chrono/ChronoPeriodImpl;->isZero()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 213
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/threeten/bp/chrono/ChronoPeriodImpl;->chronology:Lorg/threeten/bp/chrono/Chronology;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " P0D"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 226
    :goto_0
    return-object v1

    .line 215
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 216
    .local v0, "buf":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lorg/threeten/bp/chrono/ChronoPeriodImpl;->chronology:Lorg/threeten/bp/chrono/Chronology;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x50

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 217
    iget v1, p0, Lorg/threeten/bp/chrono/ChronoPeriodImpl;->years:I

    if-eqz v1, :cond_1

    .line 218
    iget v1, p0, Lorg/threeten/bp/chrono/ChronoPeriodImpl;->years:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x59

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 220
    :cond_1
    iget v1, p0, Lorg/threeten/bp/chrono/ChronoPeriodImpl;->months:I

    if-eqz v1, :cond_2

    .line 221
    iget v1, p0, Lorg/threeten/bp/chrono/ChronoPeriodImpl;->months:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x4d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 223
    :cond_2
    iget v1, p0, Lorg/threeten/bp/chrono/ChronoPeriodImpl;->days:I

    if-eqz v1, :cond_3

    .line 224
    iget v1, p0, Lorg/threeten/bp/chrono/ChronoPeriodImpl;->days:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x44

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 226
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method
