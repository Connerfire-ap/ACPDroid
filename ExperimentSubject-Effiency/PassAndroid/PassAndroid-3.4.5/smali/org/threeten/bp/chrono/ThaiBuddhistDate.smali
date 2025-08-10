.class public final Lorg/threeten/bp/chrono/ThaiBuddhistDate;
.super Lorg/threeten/bp/chrono/ChronoDateImpl;
.source "ThaiBuddhistDate.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/threeten/bp/chrono/ThaiBuddhistDate$1;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/threeten/bp/chrono/ChronoDateImpl",
        "<",
        "Lorg/threeten/bp/chrono/ThaiBuddhistDate;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x790bcfffa3423007L


# instance fields
.field private final isoDate:Lorg/threeten/bp/LocalDate;


# direct methods
.method constructor <init>(Lorg/threeten/bp/LocalDate;)V
    .locals 1
    .param p1, "date"    # Lorg/threeten/bp/LocalDate;

    .prologue
    .line 177
    invoke-direct {p0}, Lorg/threeten/bp/chrono/ChronoDateImpl;-><init>()V

    .line 178
    const-string v0, "date"

    invoke-static {p1, v0}, Lorg/threeten/bp/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 179
    iput-object p1, p0, Lorg/threeten/bp/chrono/ThaiBuddhistDate;->isoDate:Lorg/threeten/bp/LocalDate;

    .line 180
    return-void
.end method

.method public static from(Lorg/threeten/bp/temporal/TemporalAccessor;)Lorg/threeten/bp/chrono/ThaiBuddhistDate;
    .locals 1
    .param p0, "temporal"    # Lorg/threeten/bp/temporal/TemporalAccessor;

    .prologue
    .line 168
    sget-object v0, Lorg/threeten/bp/chrono/ThaiBuddhistChronology;->INSTANCE:Lorg/threeten/bp/chrono/ThaiBuddhistChronology;

    invoke-virtual {v0, p0}, Lorg/threeten/bp/chrono/ThaiBuddhistChronology;->date(Lorg/threeten/bp/temporal/TemporalAccessor;)Lorg/threeten/bp/chrono/ThaiBuddhistDate;

    move-result-object v0

    return-object v0
.end method

.method private getProlepticMonth()J
    .locals 4

    .prologue
    .line 242
    invoke-direct {p0}, Lorg/threeten/bp/chrono/ThaiBuddhistDate;->getProlepticYear()I

    move-result v0

    int-to-long v0, v0

    const-wide/16 v2, 0xc

    mul-long/2addr v0, v2

    iget-object v2, p0, Lorg/threeten/bp/chrono/ThaiBuddhistDate;->isoDate:Lorg/threeten/bp/LocalDate;

    invoke-virtual {v2}, Lorg/threeten/bp/LocalDate;->getMonthValue()I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method private getProlepticYear()I
    .locals 1

    .prologue
    .line 246
    iget-object v0, p0, Lorg/threeten/bp/chrono/ThaiBuddhistDate;->isoDate:Lorg/threeten/bp/LocalDate;

    invoke-virtual {v0}, Lorg/threeten/bp/LocalDate;->getYear()I

    move-result v0

    add-int/lit16 v0, v0, 0x21f

    return v0
.end method

.method public static now()Lorg/threeten/bp/chrono/ThaiBuddhistDate;
    .locals 1

    .prologue
    .line 98
    invoke-static {}, Lorg/threeten/bp/Clock;->systemDefaultZone()Lorg/threeten/bp/Clock;

    move-result-object v0

    invoke-static {v0}, Lorg/threeten/bp/chrono/ThaiBuddhistDate;->now(Lorg/threeten/bp/Clock;)Lorg/threeten/bp/chrono/ThaiBuddhistDate;

    move-result-object v0

    return-object v0
.end method

.method public static now(Lorg/threeten/bp/Clock;)Lorg/threeten/bp/chrono/ThaiBuddhistDate;
    .locals 2
    .param p0, "clock"    # Lorg/threeten/bp/Clock;

    .prologue
    .line 129
    new-instance v0, Lorg/threeten/bp/chrono/ThaiBuddhistDate;

    invoke-static {p0}, Lorg/threeten/bp/LocalDate;->now(Lorg/threeten/bp/Clock;)Lorg/threeten/bp/LocalDate;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/threeten/bp/chrono/ThaiBuddhistDate;-><init>(Lorg/threeten/bp/LocalDate;)V

    return-object v0
.end method

.method public static now(Lorg/threeten/bp/ZoneId;)Lorg/threeten/bp/chrono/ThaiBuddhistDate;
    .locals 1
    .param p0, "zone"    # Lorg/threeten/bp/ZoneId;

    .prologue
    .line 114
    invoke-static {p0}, Lorg/threeten/bp/Clock;->system(Lorg/threeten/bp/ZoneId;)Lorg/threeten/bp/Clock;

    move-result-object v0

    invoke-static {v0}, Lorg/threeten/bp/chrono/ThaiBuddhistDate;->now(Lorg/threeten/bp/Clock;)Lorg/threeten/bp/chrono/ThaiBuddhistDate;

    move-result-object v0

    return-object v0
.end method

.method public static of(III)Lorg/threeten/bp/chrono/ThaiBuddhistDate;
    .locals 1
    .param p0, "prolepticYear"    # I
    .param p1, "month"    # I
    .param p2, "dayOfMonth"    # I

    .prologue
    .line 147
    sget-object v0, Lorg/threeten/bp/chrono/ThaiBuddhistChronology;->INSTANCE:Lorg/threeten/bp/chrono/ThaiBuddhistChronology;

    invoke-virtual {v0, p0, p1, p2}, Lorg/threeten/bp/chrono/ThaiBuddhistChronology;->date(III)Lorg/threeten/bp/chrono/ThaiBuddhistDate;

    move-result-object v0

    return-object v0
.end method

.method static readExternal(Ljava/io/DataInput;)Lorg/threeten/bp/chrono/ChronoLocalDate;
    .locals 4
    .param p0, "in"    # Ljava/io/DataInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 373
    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    move-result v2

    .line 374
    .local v2, "year":I
    invoke-interface {p0}, Ljava/io/DataInput;->readByte()B

    move-result v1

    .line 375
    .local v1, "month":I
    invoke-interface {p0}, Ljava/io/DataInput;->readByte()B

    move-result v0

    .line 376
    .local v0, "dayOfMonth":I
    sget-object v3, Lorg/threeten/bp/chrono/ThaiBuddhistChronology;->INSTANCE:Lorg/threeten/bp/chrono/ThaiBuddhistChronology;

    invoke-virtual {v3, v2, v1, v0}, Lorg/threeten/bp/chrono/ThaiBuddhistChronology;->date(III)Lorg/threeten/bp/chrono/ThaiBuddhistDate;

    move-result-object v3

    return-object v3
.end method

.method private with(Lorg/threeten/bp/LocalDate;)Lorg/threeten/bp/chrono/ThaiBuddhistDate;
    .locals 1
    .param p1, "newDate"    # Lorg/threeten/bp/LocalDate;

    .prologue
    .line 322
    iget-object v0, p0, Lorg/threeten/bp/chrono/ThaiBuddhistDate;->isoDate:Lorg/threeten/bp/LocalDate;

    invoke-virtual {p1, v0}, Lorg/threeten/bp/LocalDate;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .end local p0    # "this":Lorg/threeten/bp/chrono/ThaiBuddhistDate;
    :goto_0
    return-object p0

    .restart local p0    # "this":Lorg/threeten/bp/chrono/ThaiBuddhistDate;
    :cond_0
    new-instance p0, Lorg/threeten/bp/chrono/ThaiBuddhistDate;

    .end local p0    # "this":Lorg/threeten/bp/chrono/ThaiBuddhistDate;
    invoke-direct {p0, p1}, Lorg/threeten/bp/chrono/ThaiBuddhistDate;-><init>(Lorg/threeten/bp/LocalDate;)V

    goto :goto_0
.end method

.method private writeReplace()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 362
    new-instance v0, Lorg/threeten/bp/chrono/Ser;

    const/4 v1, 0x7

    invoke-direct {v0, v1, p0}, Lorg/threeten/bp/chrono/Ser;-><init>(BLjava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public final atTime(Lorg/threeten/bp/LocalTime;)Lorg/threeten/bp/chrono/ChronoLocalDateTime;
    .locals 1
    .param p1, "localTime"    # Lorg/threeten/bp/LocalTime;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/threeten/bp/LocalTime;",
            ")",
            "Lorg/threeten/bp/chrono/ChronoLocalDateTime",
            "<",
            "Lorg/threeten/bp/chrono/ThaiBuddhistDate;",
            ">;"
        }
    .end annotation

    .prologue
    .line 328
    invoke-super {p0, p1}, Lorg/threeten/bp/chrono/ChronoDateImpl;->atTime(Lorg/threeten/bp/LocalTime;)Lorg/threeten/bp/chrono/ChronoLocalDateTime;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 345
    if-ne p0, p1, :cond_0

    .line 346
    const/4 v1, 0x1

    .line 352
    :goto_0
    return v1

    .line 348
    :cond_0
    instance-of v1, p1, Lorg/threeten/bp/chrono/ThaiBuddhistDate;

    if-eqz v1, :cond_1

    move-object v0, p1

    .line 349
    check-cast v0, Lorg/threeten/bp/chrono/ThaiBuddhistDate;

    .line 350
    .local v0, "otherDate":Lorg/threeten/bp/chrono/ThaiBuddhistDate;
    iget-object v1, p0, Lorg/threeten/bp/chrono/ThaiBuddhistDate;->isoDate:Lorg/threeten/bp/LocalDate;

    iget-object v2, v0, Lorg/threeten/bp/chrono/ThaiBuddhistDate;->isoDate:Lorg/threeten/bp/LocalDate;

    invoke-virtual {v1, v2}, Lorg/threeten/bp/LocalDate;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0

    .line 352
    .end local v0    # "otherDate":Lorg/threeten/bp/chrono/ThaiBuddhistDate;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public bridge synthetic getChronology()Lorg/threeten/bp/chrono/Chronology;
    .locals 1

    .prologue
    .line 71
    invoke-virtual {p0}, Lorg/threeten/bp/chrono/ThaiBuddhistDate;->getChronology()Lorg/threeten/bp/chrono/ThaiBuddhistChronology;

    move-result-object v0

    return-object v0
.end method

.method public getChronology()Lorg/threeten/bp/chrono/ThaiBuddhistChronology;
    .locals 1

    .prologue
    .line 185
    sget-object v0, Lorg/threeten/bp/chrono/ThaiBuddhistChronology;->INSTANCE:Lorg/threeten/bp/chrono/ThaiBuddhistChronology;

    return-object v0
.end method

.method public bridge synthetic getEra()Lorg/threeten/bp/chrono/Era;
    .locals 1

    .prologue
    .line 71
    invoke-virtual {p0}, Lorg/threeten/bp/chrono/ThaiBuddhistDate;->getEra()Lorg/threeten/bp/chrono/ThaiBuddhistEra;

    move-result-object v0

    return-object v0
.end method

.method public getEra()Lorg/threeten/bp/chrono/ThaiBuddhistEra;
    .locals 1

    .prologue
    .line 190
    invoke-super {p0}, Lorg/threeten/bp/chrono/ChronoDateImpl;->getEra()Lorg/threeten/bp/chrono/Era;

    move-result-object v0

    check-cast v0, Lorg/threeten/bp/chrono/ThaiBuddhistEra;

    return-object v0
.end method

.method public getLong(Lorg/threeten/bp/temporal/TemporalField;)J
    .locals 4
    .param p1, "field"    # Lorg/threeten/bp/temporal/TemporalField;

    .prologue
    const/4 v2, 0x1

    .line 223
    instance-of v1, p1, Lorg/threeten/bp/temporal/ChronoField;

    if-eqz v1, :cond_2

    .line 224
    sget-object v3, Lorg/threeten/bp/chrono/ThaiBuddhistDate$1;->$SwitchMap$org$threeten$bp$temporal$ChronoField:[I

    move-object v1, p1

    check-cast v1, Lorg/threeten/bp/temporal/ChronoField;

    invoke-virtual {v1}, Lorg/threeten/bp/temporal/ChronoField;->ordinal()I

    move-result v1

    aget v1, v3, v1

    packed-switch v1, :pswitch_data_0

    .line 236
    iget-object v1, p0, Lorg/threeten/bp/chrono/ThaiBuddhistDate;->isoDate:Lorg/threeten/bp/LocalDate;

    invoke-virtual {v1, p1}, Lorg/threeten/bp/LocalDate;->getLong(Lorg/threeten/bp/temporal/TemporalField;)J

    move-result-wide v2

    .line 238
    :goto_0
    return-wide v2

    .line 226
    :pswitch_0
    invoke-direct {p0}, Lorg/threeten/bp/chrono/ThaiBuddhistDate;->getProlepticMonth()J

    move-result-wide v2

    goto :goto_0

    .line 228
    :pswitch_1
    invoke-direct {p0}, Lorg/threeten/bp/chrono/ThaiBuddhistDate;->getProlepticYear()I

    move-result v0

    .line 229
    .local v0, "prolepticYear":I
    if-lt v0, v2, :cond_0

    .end local v0    # "prolepticYear":I
    :goto_1
    int-to-long v2, v0

    goto :goto_0

    .restart local v0    # "prolepticYear":I
    :cond_0
    rsub-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 232
    .end local v0    # "prolepticYear":I
    :pswitch_2
    invoke-direct {p0}, Lorg/threeten/bp/chrono/ThaiBuddhistDate;->getProlepticYear()I

    move-result v1

    int-to-long v2, v1

    goto :goto_0

    .line 234
    :pswitch_3
    invoke-direct {p0}, Lorg/threeten/bp/chrono/ThaiBuddhistDate;->getProlepticYear()I

    move-result v1

    if-lt v1, v2, :cond_1

    move v1, v2

    :goto_2
    int-to-long v2, v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_2

    .line 238
    :cond_2
    invoke-interface {p1, p0}, Lorg/threeten/bp/temporal/TemporalField;->getFrom(Lorg/threeten/bp/temporal/TemporalAccessor;)J

    move-result-wide v2

    goto :goto_0

    .line 224
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 357
    invoke-virtual {p0}, Lorg/threeten/bp/chrono/ThaiBuddhistDate;->getChronology()Lorg/threeten/bp/chrono/ThaiBuddhistChronology;

    move-result-object v0

    invoke-virtual {v0}, Lorg/threeten/bp/chrono/ThaiBuddhistChronology;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iget-object v1, p0, Lorg/threeten/bp/chrono/ThaiBuddhistDate;->isoDate:Lorg/threeten/bp/LocalDate;

    invoke-virtual {v1}, Lorg/threeten/bp/LocalDate;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public lengthOfMonth()I
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lorg/threeten/bp/chrono/ThaiBuddhistDate;->isoDate:Lorg/threeten/bp/LocalDate;

    invoke-virtual {v0}, Lorg/threeten/bp/LocalDate;->lengthOfMonth()I

    move-result v0

    return v0
.end method

.method public bridge synthetic minus(JLorg/threeten/bp/temporal/TemporalUnit;)Lorg/threeten/bp/chrono/ChronoLocalDate;
    .locals 1
    .param p1, "x0"    # J
    .param p3, "x1"    # Lorg/threeten/bp/temporal/TemporalUnit;

    .prologue
    .line 71
    invoke-virtual {p0, p1, p2, p3}, Lorg/threeten/bp/chrono/ThaiBuddhistDate;->minus(JLorg/threeten/bp/temporal/TemporalUnit;)Lorg/threeten/bp/chrono/ThaiBuddhistDate;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic minus(Lorg/threeten/bp/temporal/TemporalAmount;)Lorg/threeten/bp/chrono/ChronoLocalDate;
    .locals 1
    .param p1, "x0"    # Lorg/threeten/bp/temporal/TemporalAmount;

    .prologue
    .line 71
    invoke-virtual {p0, p1}, Lorg/threeten/bp/chrono/ThaiBuddhistDate;->minus(Lorg/threeten/bp/temporal/TemporalAmount;)Lorg/threeten/bp/chrono/ThaiBuddhistDate;

    move-result-object v0

    return-object v0
.end method

.method public minus(JLorg/threeten/bp/temporal/TemporalUnit;)Lorg/threeten/bp/chrono/ThaiBuddhistDate;
    .locals 1
    .param p1, "amountToAdd"    # J
    .param p3, "unit"    # Lorg/threeten/bp/temporal/TemporalUnit;

    .prologue
    .line 302
    invoke-super {p0, p1, p2, p3}, Lorg/threeten/bp/chrono/ChronoDateImpl;->minus(JLorg/threeten/bp/temporal/TemporalUnit;)Lorg/threeten/bp/chrono/ChronoLocalDate;

    move-result-object v0

    check-cast v0, Lorg/threeten/bp/chrono/ThaiBuddhistDate;

    return-object v0
.end method

.method public minus(Lorg/threeten/bp/temporal/TemporalAmount;)Lorg/threeten/bp/chrono/ThaiBuddhistDate;
    .locals 1
    .param p1, "amount"    # Lorg/threeten/bp/temporal/TemporalAmount;

    .prologue
    .line 297
    invoke-super {p0, p1}, Lorg/threeten/bp/chrono/ChronoDateImpl;->minus(Lorg/threeten/bp/temporal/TemporalAmount;)Lorg/threeten/bp/chrono/ChronoLocalDate;

    move-result-object v0

    check-cast v0, Lorg/threeten/bp/chrono/ThaiBuddhistDate;

    return-object v0
.end method

.method public bridge synthetic minus(JLorg/threeten/bp/temporal/TemporalUnit;)Lorg/threeten/bp/temporal/Temporal;
    .locals 1
    .param p1, "x0"    # J
    .param p3, "x1"    # Lorg/threeten/bp/temporal/TemporalUnit;

    .prologue
    .line 71
    invoke-virtual {p0, p1, p2, p3}, Lorg/threeten/bp/chrono/ThaiBuddhistDate;->minus(JLorg/threeten/bp/temporal/TemporalUnit;)Lorg/threeten/bp/chrono/ThaiBuddhistDate;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic minus(Lorg/threeten/bp/temporal/TemporalAmount;)Lorg/threeten/bp/temporal/Temporal;
    .locals 1
    .param p1, "x0"    # Lorg/threeten/bp/temporal/TemporalAmount;

    .prologue
    .line 71
    invoke-virtual {p0, p1}, Lorg/threeten/bp/chrono/ThaiBuddhistDate;->minus(Lorg/threeten/bp/temporal/TemporalAmount;)Lorg/threeten/bp/chrono/ThaiBuddhistDate;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic plus(JLorg/threeten/bp/temporal/TemporalUnit;)Lorg/threeten/bp/chrono/ChronoDateImpl;
    .locals 1
    .param p1, "x0"    # J
    .param p3, "x1"    # Lorg/threeten/bp/temporal/TemporalUnit;

    .prologue
    .line 71
    invoke-virtual {p0, p1, p2, p3}, Lorg/threeten/bp/chrono/ThaiBuddhistDate;->plus(JLorg/threeten/bp/temporal/TemporalUnit;)Lorg/threeten/bp/chrono/ThaiBuddhistDate;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic plus(JLorg/threeten/bp/temporal/TemporalUnit;)Lorg/threeten/bp/chrono/ChronoLocalDate;
    .locals 1
    .param p1, "x0"    # J
    .param p3, "x1"    # Lorg/threeten/bp/temporal/TemporalUnit;

    .prologue
    .line 71
    invoke-virtual {p0, p1, p2, p3}, Lorg/threeten/bp/chrono/ThaiBuddhistDate;->plus(JLorg/threeten/bp/temporal/TemporalUnit;)Lorg/threeten/bp/chrono/ThaiBuddhistDate;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic plus(Lorg/threeten/bp/temporal/TemporalAmount;)Lorg/threeten/bp/chrono/ChronoLocalDate;
    .locals 1
    .param p1, "x0"    # Lorg/threeten/bp/temporal/TemporalAmount;

    .prologue
    .line 71
    invoke-virtual {p0, p1}, Lorg/threeten/bp/chrono/ThaiBuddhistDate;->plus(Lorg/threeten/bp/temporal/TemporalAmount;)Lorg/threeten/bp/chrono/ThaiBuddhistDate;

    move-result-object v0

    return-object v0
.end method

.method public plus(JLorg/threeten/bp/temporal/TemporalUnit;)Lorg/threeten/bp/chrono/ThaiBuddhistDate;
    .locals 1
    .param p1, "amountToAdd"    # J
    .param p3, "unit"    # Lorg/threeten/bp/temporal/TemporalUnit;

    .prologue
    .line 292
    invoke-super {p0, p1, p2, p3}, Lorg/threeten/bp/chrono/ChronoDateImpl;->plus(JLorg/threeten/bp/temporal/TemporalUnit;)Lorg/threeten/bp/chrono/ChronoDateImpl;

    move-result-object v0

    check-cast v0, Lorg/threeten/bp/chrono/ThaiBuddhistDate;

    return-object v0
.end method

.method public plus(Lorg/threeten/bp/temporal/TemporalAmount;)Lorg/threeten/bp/chrono/ThaiBuddhistDate;
    .locals 1
    .param p1, "amount"    # Lorg/threeten/bp/temporal/TemporalAmount;

    .prologue
    .line 287
    invoke-super {p0, p1}, Lorg/threeten/bp/chrono/ChronoDateImpl;->plus(Lorg/threeten/bp/temporal/TemporalAmount;)Lorg/threeten/bp/chrono/ChronoLocalDate;

    move-result-object v0

    check-cast v0, Lorg/threeten/bp/chrono/ThaiBuddhistDate;

    return-object v0
.end method

.method public bridge synthetic plus(JLorg/threeten/bp/temporal/TemporalUnit;)Lorg/threeten/bp/temporal/Temporal;
    .locals 1
    .param p1, "x0"    # J
    .param p3, "x1"    # Lorg/threeten/bp/temporal/TemporalUnit;

    .prologue
    .line 71
    invoke-virtual {p0, p1, p2, p3}, Lorg/threeten/bp/chrono/ThaiBuddhistDate;->plus(JLorg/threeten/bp/temporal/TemporalUnit;)Lorg/threeten/bp/chrono/ThaiBuddhistDate;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic plus(Lorg/threeten/bp/temporal/TemporalAmount;)Lorg/threeten/bp/temporal/Temporal;
    .locals 1
    .param p1, "x0"    # Lorg/threeten/bp/temporal/TemporalAmount;

    .prologue
    .line 71
    invoke-virtual {p0, p1}, Lorg/threeten/bp/chrono/ThaiBuddhistDate;->plus(Lorg/threeten/bp/temporal/TemporalAmount;)Lorg/threeten/bp/chrono/ThaiBuddhistDate;

    move-result-object v0

    return-object v0
.end method

.method bridge synthetic plusDays(J)Lorg/threeten/bp/chrono/ChronoDateImpl;
    .locals 1
    .param p1, "x0"    # J

    .prologue
    .line 71
    invoke-virtual {p0, p1, p2}, Lorg/threeten/bp/chrono/ThaiBuddhistDate;->plusDays(J)Lorg/threeten/bp/chrono/ThaiBuddhistDate;

    move-result-object v0

    return-object v0
.end method

.method plusDays(J)Lorg/threeten/bp/chrono/ThaiBuddhistDate;
    .locals 1
    .param p1, "days"    # J

    .prologue
    .line 318
    iget-object v0, p0, Lorg/threeten/bp/chrono/ThaiBuddhistDate;->isoDate:Lorg/threeten/bp/LocalDate;

    invoke-virtual {v0, p1, p2}, Lorg/threeten/bp/LocalDate;->plusDays(J)Lorg/threeten/bp/LocalDate;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/threeten/bp/chrono/ThaiBuddhistDate;->with(Lorg/threeten/bp/LocalDate;)Lorg/threeten/bp/chrono/ThaiBuddhistDate;

    move-result-object v0

    return-object v0
.end method

.method bridge synthetic plusMonths(J)Lorg/threeten/bp/chrono/ChronoDateImpl;
    .locals 1
    .param p1, "x0"    # J

    .prologue
    .line 71
    invoke-virtual {p0, p1, p2}, Lorg/threeten/bp/chrono/ThaiBuddhistDate;->plusMonths(J)Lorg/threeten/bp/chrono/ThaiBuddhistDate;

    move-result-object v0

    return-object v0
.end method

.method plusMonths(J)Lorg/threeten/bp/chrono/ThaiBuddhistDate;
    .locals 1
    .param p1, "months"    # J

    .prologue
    .line 313
    iget-object v0, p0, Lorg/threeten/bp/chrono/ThaiBuddhistDate;->isoDate:Lorg/threeten/bp/LocalDate;

    invoke-virtual {v0, p1, p2}, Lorg/threeten/bp/LocalDate;->plusMonths(J)Lorg/threeten/bp/LocalDate;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/threeten/bp/chrono/ThaiBuddhistDate;->with(Lorg/threeten/bp/LocalDate;)Lorg/threeten/bp/chrono/ThaiBuddhistDate;

    move-result-object v0

    return-object v0
.end method

.method bridge synthetic plusYears(J)Lorg/threeten/bp/chrono/ChronoDateImpl;
    .locals 1
    .param p1, "x0"    # J

    .prologue
    .line 71
    invoke-virtual {p0, p1, p2}, Lorg/threeten/bp/chrono/ThaiBuddhistDate;->plusYears(J)Lorg/threeten/bp/chrono/ThaiBuddhistDate;

    move-result-object v0

    return-object v0
.end method

.method plusYears(J)Lorg/threeten/bp/chrono/ThaiBuddhistDate;
    .locals 1
    .param p1, "years"    # J

    .prologue
    .line 308
    iget-object v0, p0, Lorg/threeten/bp/chrono/ThaiBuddhistDate;->isoDate:Lorg/threeten/bp/LocalDate;

    invoke-virtual {v0, p1, p2}, Lorg/threeten/bp/LocalDate;->plusYears(J)Lorg/threeten/bp/LocalDate;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/threeten/bp/chrono/ThaiBuddhistDate;->with(Lorg/threeten/bp/LocalDate;)Lorg/threeten/bp/chrono/ThaiBuddhistDate;

    move-result-object v0

    return-object v0
.end method

.method public range(Lorg/threeten/bp/temporal/TemporalField;)Lorg/threeten/bp/temporal/ValueRange;
    .locals 10
    .param p1, "field"    # Lorg/threeten/bp/temporal/TemporalField;

    .prologue
    const-wide/16 v8, 0x21f

    const-wide/16 v6, 0x1

    .line 200
    instance-of v4, p1, Lorg/threeten/bp/temporal/ChronoField;

    if-eqz v4, :cond_2

    .line 201
    invoke-virtual {p0, p1}, Lorg/threeten/bp/chrono/ThaiBuddhistDate;->isSupported(Lorg/threeten/bp/temporal/TemporalField;)Z

    move-result v4

    if-eqz v4, :cond_1

    move-object v0, p1

    .line 202
    check-cast v0, Lorg/threeten/bp/temporal/ChronoField;

    .line 203
    .local v0, "f":Lorg/threeten/bp/temporal/ChronoField;
    sget-object v4, Lorg/threeten/bp/chrono/ThaiBuddhistDate$1;->$SwitchMap$org$threeten$bp$temporal$ChronoField:[I

    invoke-virtual {v0}, Lorg/threeten/bp/temporal/ChronoField;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 214
    invoke-virtual {p0}, Lorg/threeten/bp/chrono/ThaiBuddhistDate;->getChronology()Lorg/threeten/bp/chrono/ThaiBuddhistChronology;

    move-result-object v4

    invoke-virtual {v4, v0}, Lorg/threeten/bp/chrono/ThaiBuddhistChronology;->range(Lorg/threeten/bp/temporal/ChronoField;)Lorg/threeten/bp/temporal/ValueRange;

    move-result-object v4

    .line 218
    .end local v0    # "f":Lorg/threeten/bp/temporal/ChronoField;
    :goto_0
    return-object v4

    .line 207
    .restart local v0    # "f":Lorg/threeten/bp/temporal/ChronoField;
    :pswitch_0
    iget-object v4, p0, Lorg/threeten/bp/chrono/ThaiBuddhistDate;->isoDate:Lorg/threeten/bp/LocalDate;

    invoke-virtual {v4, p1}, Lorg/threeten/bp/LocalDate;->range(Lorg/threeten/bp/temporal/TemporalField;)Lorg/threeten/bp/temporal/ValueRange;

    move-result-object v4

    goto :goto_0

    .line 209
    :pswitch_1
    sget-object v4, Lorg/threeten/bp/temporal/ChronoField;->YEAR:Lorg/threeten/bp/temporal/ChronoField;

    invoke-virtual {v4}, Lorg/threeten/bp/temporal/ChronoField;->range()Lorg/threeten/bp/temporal/ValueRange;

    move-result-object v1

    .line 210
    .local v1, "range":Lorg/threeten/bp/temporal/ValueRange;
    invoke-direct {p0}, Lorg/threeten/bp/chrono/ThaiBuddhistDate;->getProlepticYear()I

    move-result v4

    if-gtz v4, :cond_0

    invoke-virtual {v1}, Lorg/threeten/bp/temporal/ValueRange;->getMinimum()J

    move-result-wide v4

    add-long/2addr v4, v8

    neg-long v4, v4

    add-long v2, v4, v6

    .line 211
    .local v2, "max":J
    :goto_1
    invoke-static {v6, v7, v2, v3}, Lorg/threeten/bp/temporal/ValueRange;->of(JJ)Lorg/threeten/bp/temporal/ValueRange;

    move-result-object v4

    goto :goto_0

    .line 210
    .end local v2    # "max":J
    :cond_0
    invoke-virtual {v1}, Lorg/threeten/bp/temporal/ValueRange;->getMaximum()J

    move-result-wide v4

    add-long v2, v4, v8

    goto :goto_1

    .line 216
    .end local v0    # "f":Lorg/threeten/bp/temporal/ChronoField;
    .end local v1    # "range":Lorg/threeten/bp/temporal/ValueRange;
    :cond_1
    new-instance v4, Lorg/threeten/bp/temporal/UnsupportedTemporalTypeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unsupported field: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/threeten/bp/temporal/UnsupportedTemporalTypeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 218
    :cond_2
    invoke-interface {p1, p0}, Lorg/threeten/bp/temporal/TemporalField;->rangeRefinedBy(Lorg/threeten/bp/temporal/TemporalAccessor;)Lorg/threeten/bp/temporal/ValueRange;

    move-result-object v4

    goto :goto_0

    .line 203
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public toEpochDay()J
    .locals 2

    .prologue
    .line 339
    iget-object v0, p0, Lorg/threeten/bp/chrono/ThaiBuddhistDate;->isoDate:Lorg/threeten/bp/LocalDate;

    invoke-virtual {v0}, Lorg/threeten/bp/LocalDate;->toEpochDay()J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic until(Lorg/threeten/bp/temporal/Temporal;Lorg/threeten/bp/temporal/TemporalUnit;)J
    .locals 2
    .param p1, "x0"    # Lorg/threeten/bp/temporal/Temporal;
    .param p2, "x1"    # Lorg/threeten/bp/temporal/TemporalUnit;

    .prologue
    .line 71
    invoke-super {p0, p1, p2}, Lorg/threeten/bp/chrono/ChronoDateImpl;->until(Lorg/threeten/bp/temporal/Temporal;Lorg/threeten/bp/temporal/TemporalUnit;)J

    move-result-wide v0

    return-wide v0
.end method

.method public until(Lorg/threeten/bp/chrono/ChronoLocalDate;)Lorg/threeten/bp/chrono/ChronoPeriod;
    .locals 5
    .param p1, "endDate"    # Lorg/threeten/bp/chrono/ChronoLocalDate;

    .prologue
    .line 333
    iget-object v1, p0, Lorg/threeten/bp/chrono/ThaiBuddhistDate;->isoDate:Lorg/threeten/bp/LocalDate;

    invoke-virtual {v1, p1}, Lorg/threeten/bp/LocalDate;->until(Lorg/threeten/bp/chrono/ChronoLocalDate;)Lorg/threeten/bp/Period;

    move-result-object v0

    .line 334
    .local v0, "period":Lorg/threeten/bp/Period;
    invoke-virtual {p0}, Lorg/threeten/bp/chrono/ThaiBuddhistDate;->getChronology()Lorg/threeten/bp/chrono/ThaiBuddhistChronology;

    move-result-object v1

    invoke-virtual {v0}, Lorg/threeten/bp/Period;->getYears()I

    move-result v2

    invoke-virtual {v0}, Lorg/threeten/bp/Period;->getMonths()I

    move-result v3

    invoke-virtual {v0}, Lorg/threeten/bp/Period;->getDays()I

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Lorg/threeten/bp/chrono/ThaiBuddhistChronology;->period(III)Lorg/threeten/bp/chrono/ChronoPeriod;

    move-result-object v1

    return-object v1
.end method

.method public bridge synthetic with(Lorg/threeten/bp/temporal/TemporalAdjuster;)Lorg/threeten/bp/chrono/ChronoLocalDate;
    .locals 1
    .param p1, "x0"    # Lorg/threeten/bp/temporal/TemporalAdjuster;

    .prologue
    .line 71
    invoke-virtual {p0, p1}, Lorg/threeten/bp/chrono/ThaiBuddhistDate;->with(Lorg/threeten/bp/temporal/TemporalAdjuster;)Lorg/threeten/bp/chrono/ThaiBuddhistDate;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic with(Lorg/threeten/bp/temporal/TemporalField;J)Lorg/threeten/bp/chrono/ChronoLocalDate;
    .locals 2
    .param p1, "x0"    # Lorg/threeten/bp/temporal/TemporalField;
    .param p2, "x1"    # J

    .prologue
    .line 71
    invoke-virtual {p0, p1, p2, p3}, Lorg/threeten/bp/chrono/ThaiBuddhistDate;->with(Lorg/threeten/bp/temporal/TemporalField;J)Lorg/threeten/bp/chrono/ThaiBuddhistDate;

    move-result-object v0

    return-object v0
.end method

.method public with(Lorg/threeten/bp/temporal/TemporalAdjuster;)Lorg/threeten/bp/chrono/ThaiBuddhistDate;
    .locals 1
    .param p1, "adjuster"    # Lorg/threeten/bp/temporal/TemporalAdjuster;

    .prologue
    .line 252
    invoke-super {p0, p1}, Lorg/threeten/bp/chrono/ChronoDateImpl;->with(Lorg/threeten/bp/temporal/TemporalAdjuster;)Lorg/threeten/bp/chrono/ChronoLocalDate;

    move-result-object v0

    check-cast v0, Lorg/threeten/bp/chrono/ThaiBuddhistDate;

    return-object v0
.end method

.method public with(Lorg/threeten/bp/temporal/TemporalField;J)Lorg/threeten/bp/chrono/ThaiBuddhistDate;
    .locals 6
    .param p1, "field"    # Lorg/threeten/bp/temporal/TemporalField;
    .param p2, "newValue"    # J

    .prologue
    .line 257
    instance-of v2, p1, Lorg/threeten/bp/temporal/ChronoField;

    if-eqz v2, :cond_2

    move-object v0, p1

    .line 258
    check-cast v0, Lorg/threeten/bp/temporal/ChronoField;

    .line 259
    .local v0, "f":Lorg/threeten/bp/temporal/ChronoField;
    invoke-virtual {p0, v0}, Lorg/threeten/bp/chrono/ThaiBuddhistDate;->getLong(Lorg/threeten/bp/temporal/TemporalField;)J

    move-result-wide v2

    cmp-long v2, v2, p2

    if-nez v2, :cond_0

    .line 282
    .end local v0    # "f":Lorg/threeten/bp/temporal/ChronoField;
    .end local p0    # "this":Lorg/threeten/bp/chrono/ThaiBuddhistDate;
    :goto_0
    return-object p0

    .line 262
    .restart local v0    # "f":Lorg/threeten/bp/temporal/ChronoField;
    .restart local p0    # "this":Lorg/threeten/bp/chrono/ThaiBuddhistDate;
    :cond_0
    sget-object v2, Lorg/threeten/bp/chrono/ThaiBuddhistDate$1;->$SwitchMap$org$threeten$bp$temporal$ChronoField:[I

    invoke-virtual {v0}, Lorg/threeten/bp/temporal/ChronoField;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 280
    :goto_1
    iget-object v2, p0, Lorg/threeten/bp/chrono/ThaiBuddhistDate;->isoDate:Lorg/threeten/bp/LocalDate;

    invoke-virtual {v2, p1, p2, p3}, Lorg/threeten/bp/LocalDate;->with(Lorg/threeten/bp/temporal/TemporalField;J)Lorg/threeten/bp/LocalDate;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/threeten/bp/chrono/ThaiBuddhistDate;->with(Lorg/threeten/bp/LocalDate;)Lorg/threeten/bp/chrono/ThaiBuddhistDate;

    move-result-object p0

    goto :goto_0

    .line 264
    :pswitch_0
    invoke-virtual {p0}, Lorg/threeten/bp/chrono/ThaiBuddhistDate;->getChronology()Lorg/threeten/bp/chrono/ThaiBuddhistChronology;

    move-result-object v2

    invoke-virtual {v2, v0}, Lorg/threeten/bp/chrono/ThaiBuddhistChronology;->range(Lorg/threeten/bp/temporal/ChronoField;)Lorg/threeten/bp/temporal/ValueRange;

    move-result-object v2

    invoke-virtual {v2, p2, p3, v0}, Lorg/threeten/bp/temporal/ValueRange;->checkValidValue(JLorg/threeten/bp/temporal/TemporalField;)J

    .line 265
    invoke-direct {p0}, Lorg/threeten/bp/chrono/ThaiBuddhistDate;->getProlepticMonth()J

    move-result-wide v2

    sub-long v2, p2, v2

    invoke-virtual {p0, v2, v3}, Lorg/threeten/bp/chrono/ThaiBuddhistDate;->plusMonths(J)Lorg/threeten/bp/chrono/ThaiBuddhistDate;

    move-result-object p0

    goto :goto_0

    .line 269
    :pswitch_1
    invoke-virtual {p0}, Lorg/threeten/bp/chrono/ThaiBuddhistDate;->getChronology()Lorg/threeten/bp/chrono/ThaiBuddhistChronology;

    move-result-object v2

    invoke-virtual {v2, v0}, Lorg/threeten/bp/chrono/ThaiBuddhistChronology;->range(Lorg/threeten/bp/temporal/ChronoField;)Lorg/threeten/bp/temporal/ValueRange;

    move-result-object v2

    invoke-virtual {v2, p2, p3, v0}, Lorg/threeten/bp/temporal/ValueRange;->checkValidIntValue(JLorg/threeten/bp/temporal/TemporalField;)I

    move-result v1

    .line 270
    .local v1, "nvalue":I
    sget-object v2, Lorg/threeten/bp/chrono/ThaiBuddhistDate$1;->$SwitchMap$org$threeten$bp$temporal$ChronoField:[I

    invoke-virtual {v0}, Lorg/threeten/bp/temporal/ChronoField;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_1

    :pswitch_2
    goto :goto_1

    .line 272
    :pswitch_3
    iget-object v2, p0, Lorg/threeten/bp/chrono/ThaiBuddhistDate;->isoDate:Lorg/threeten/bp/LocalDate;

    invoke-direct {p0}, Lorg/threeten/bp/chrono/ThaiBuddhistDate;->getProlepticYear()I

    move-result v3

    const/4 v4, 0x1

    if-lt v3, v4, :cond_1

    .end local v1    # "nvalue":I
    :goto_2
    add-int/lit16 v3, v1, -0x21f

    invoke-virtual {v2, v3}, Lorg/threeten/bp/LocalDate;->withYear(I)Lorg/threeten/bp/LocalDate;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/threeten/bp/chrono/ThaiBuddhistDate;->with(Lorg/threeten/bp/LocalDate;)Lorg/threeten/bp/chrono/ThaiBuddhistDate;

    move-result-object p0

    goto :goto_0

    .restart local v1    # "nvalue":I
    :cond_1
    rsub-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 274
    :pswitch_4
    iget-object v2, p0, Lorg/threeten/bp/chrono/ThaiBuddhistDate;->isoDate:Lorg/threeten/bp/LocalDate;

    add-int/lit16 v3, v1, -0x21f

    invoke-virtual {v2, v3}, Lorg/threeten/bp/LocalDate;->withYear(I)Lorg/threeten/bp/LocalDate;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/threeten/bp/chrono/ThaiBuddhistDate;->with(Lorg/threeten/bp/LocalDate;)Lorg/threeten/bp/chrono/ThaiBuddhistDate;

    move-result-object p0

    goto :goto_0

    .line 276
    :pswitch_5
    iget-object v2, p0, Lorg/threeten/bp/chrono/ThaiBuddhistDate;->isoDate:Lorg/threeten/bp/LocalDate;

    invoke-direct {p0}, Lorg/threeten/bp/chrono/ThaiBuddhistDate;->getProlepticYear()I

    move-result v3

    rsub-int/lit8 v3, v3, 0x1

    add-int/lit16 v3, v3, -0x21f

    invoke-virtual {v2, v3}, Lorg/threeten/bp/LocalDate;->withYear(I)Lorg/threeten/bp/LocalDate;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/threeten/bp/chrono/ThaiBuddhistDate;->with(Lorg/threeten/bp/LocalDate;)Lorg/threeten/bp/chrono/ThaiBuddhistDate;

    move-result-object p0

    goto :goto_0

    .line 282
    .end local v0    # "f":Lorg/threeten/bp/temporal/ChronoField;
    .end local v1    # "nvalue":I
    :cond_2
    invoke-interface {p1, p0, p2, p3}, Lorg/threeten/bp/temporal/TemporalField;->adjustInto(Lorg/threeten/bp/temporal/Temporal;J)Lorg/threeten/bp/temporal/Temporal;

    move-result-object v2

    check-cast v2, Lorg/threeten/bp/chrono/ThaiBuddhistDate;

    move-object p0, v2

    goto/16 :goto_0

    .line 262
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch

    .line 270
    :pswitch_data_1
    .packed-switch 0x4
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public bridge synthetic with(Lorg/threeten/bp/temporal/TemporalAdjuster;)Lorg/threeten/bp/temporal/Temporal;
    .locals 1
    .param p1, "x0"    # Lorg/threeten/bp/temporal/TemporalAdjuster;

    .prologue
    .line 71
    invoke-virtual {p0, p1}, Lorg/threeten/bp/chrono/ThaiBuddhistDate;->with(Lorg/threeten/bp/temporal/TemporalAdjuster;)Lorg/threeten/bp/chrono/ThaiBuddhistDate;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic with(Lorg/threeten/bp/temporal/TemporalField;J)Lorg/threeten/bp/temporal/Temporal;
    .locals 2
    .param p1, "x0"    # Lorg/threeten/bp/temporal/TemporalField;
    .param p2, "x1"    # J

    .prologue
    .line 71
    invoke-virtual {p0, p1, p2, p3}, Lorg/threeten/bp/chrono/ThaiBuddhistDate;->with(Lorg/threeten/bp/temporal/TemporalField;J)Lorg/threeten/bp/chrono/ThaiBuddhistDate;

    move-result-object v0

    return-object v0
.end method

.method writeExternal(Ljava/io/DataOutput;)V
    .locals 1
    .param p1, "out"    # Ljava/io/DataOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 367
    sget-object v0, Lorg/threeten/bp/temporal/ChronoField;->YEAR:Lorg/threeten/bp/temporal/ChronoField;

    invoke-virtual {p0, v0}, Lorg/threeten/bp/chrono/ThaiBuddhistDate;->get(Lorg/threeten/bp/temporal/TemporalField;)I

    move-result v0

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    .line 368
    sget-object v0, Lorg/threeten/bp/temporal/ChronoField;->MONTH_OF_YEAR:Lorg/threeten/bp/temporal/ChronoField;

    invoke-virtual {p0, v0}, Lorg/threeten/bp/chrono/ThaiBuddhistDate;->get(Lorg/threeten/bp/temporal/TemporalField;)I

    move-result v0

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    .line 369
    sget-object v0, Lorg/threeten/bp/temporal/ChronoField;->DAY_OF_MONTH:Lorg/threeten/bp/temporal/ChronoField;

    invoke-virtual {p0, v0}, Lorg/threeten/bp/chrono/ThaiBuddhistDate;->get(Lorg/threeten/bp/temporal/TemporalField;)I

    move-result v0

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    .line 370
    return-void
.end method
