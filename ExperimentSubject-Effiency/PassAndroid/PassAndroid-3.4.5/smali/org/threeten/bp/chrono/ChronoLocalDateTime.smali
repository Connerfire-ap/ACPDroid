.class public abstract Lorg/threeten/bp/chrono/ChronoLocalDateTime;
.super Lorg/threeten/bp/jdk8/DefaultInterfaceTemporal;
.source "ChronoLocalDateTime.java"

# interfaces
.implements Lorg/threeten/bp/temporal/Temporal;
.implements Lorg/threeten/bp/temporal/TemporalAdjuster;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<D:",
        "Lorg/threeten/bp/chrono/ChronoLocalDate;",
        ">",
        "Lorg/threeten/bp/jdk8/DefaultInterfaceTemporal;",
        "Lorg/threeten/bp/temporal/Temporal;",
        "Lorg/threeten/bp/temporal/TemporalAdjuster;",
        "Ljava/lang/Comparable",
        "<",
        "Lorg/threeten/bp/chrono/ChronoLocalDateTime",
        "<*>;>;"
    }
.end annotation


# static fields
.field private static final DATE_TIME_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lorg/threeten/bp/chrono/ChronoLocalDateTime",
            "<*>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 115
    new-instance v0, Lorg/threeten/bp/chrono/ChronoLocalDateTime$1;

    invoke-direct {v0}, Lorg/threeten/bp/chrono/ChronoLocalDateTime$1;-><init>()V

    sput-object v0, Lorg/threeten/bp/chrono/ChronoLocalDateTime;->DATE_TIME_COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 93
    .local p0, "this":Lorg/threeten/bp/chrono/ChronoLocalDateTime;, "Lorg/threeten/bp/chrono/ChronoLocalDateTime<TD;>;"
    invoke-direct {p0}, Lorg/threeten/bp/jdk8/DefaultInterfaceTemporal;-><init>()V

    return-void
.end method

.method public static from(Lorg/threeten/bp/temporal/TemporalAccessor;)Lorg/threeten/bp/chrono/ChronoLocalDateTime;
    .locals 4
    .param p0, "temporal"    # Lorg/threeten/bp/temporal/TemporalAccessor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/threeten/bp/temporal/TemporalAccessor;",
            ")",
            "Lorg/threeten/bp/chrono/ChronoLocalDateTime",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 150
    const-string v1, "temporal"

    invoke-static {p0, v1}, Lorg/threeten/bp/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 151
    instance-of v1, p0, Lorg/threeten/bp/chrono/ChronoLocalDateTime;

    if-eqz v1, :cond_0

    .line 152
    check-cast p0, Lorg/threeten/bp/chrono/ChronoLocalDateTime;

    .line 158
    .end local p0    # "temporal":Lorg/threeten/bp/temporal/TemporalAccessor;
    .local v0, "chrono":Lorg/threeten/bp/chrono/Chronology;
    :goto_0
    return-object p0

    .line 154
    .end local v0    # "chrono":Lorg/threeten/bp/chrono/Chronology;
    .restart local p0    # "temporal":Lorg/threeten/bp/temporal/TemporalAccessor;
    :cond_0
    invoke-static {}, Lorg/threeten/bp/temporal/TemporalQueries;->chronology()Lorg/threeten/bp/temporal/TemporalQuery;

    move-result-object v1

    invoke-interface {p0, v1}, Lorg/threeten/bp/temporal/TemporalAccessor;->query(Lorg/threeten/bp/temporal/TemporalQuery;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/threeten/bp/chrono/Chronology;

    .line 155
    .restart local v0    # "chrono":Lorg/threeten/bp/chrono/Chronology;
    if-nez v0, :cond_1

    .line 156
    new-instance v1, Lorg/threeten/bp/DateTimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No Chronology found to create ChronoLocalDateTime: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/threeten/bp/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 158
    :cond_1
    invoke-virtual {v0, p0}, Lorg/threeten/bp/chrono/Chronology;->localDateTime(Lorg/threeten/bp/temporal/TemporalAccessor;)Lorg/threeten/bp/chrono/ChronoLocalDateTime;

    move-result-object p0

    goto :goto_0
.end method

.method public static timeLineOrder()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator",
            "<",
            "Lorg/threeten/bp/chrono/ChronoLocalDateTime",
            "<*>;>;"
        }
    .end annotation

    .prologue
    .line 113
    sget-object v0, Lorg/threeten/bp/chrono/ChronoLocalDateTime;->DATE_TIME_COMPARATOR:Ljava/util/Comparator;

    return-object v0
.end method


# virtual methods
.method public adjustInto(Lorg/threeten/bp/temporal/Temporal;)Lorg/threeten/bp/temporal/Temporal;
    .locals 4
    .param p1, "temporal"    # Lorg/threeten/bp/temporal/Temporal;

    .prologue
    .line 242
    .local p0, "this":Lorg/threeten/bp/chrono/ChronoLocalDateTime;, "Lorg/threeten/bp/chrono/ChronoLocalDateTime<TD;>;"
    sget-object v0, Lorg/threeten/bp/temporal/ChronoField;->EPOCH_DAY:Lorg/threeten/bp/temporal/ChronoField;

    invoke-virtual {p0}, Lorg/threeten/bp/chrono/ChronoLocalDateTime;->toLocalDate()Lorg/threeten/bp/chrono/ChronoLocalDate;

    move-result-object v1

    invoke-virtual {v1}, Lorg/threeten/bp/chrono/ChronoLocalDate;->toEpochDay()J

    move-result-wide v2

    invoke-interface {p1, v0, v2, v3}, Lorg/threeten/bp/temporal/Temporal;->with(Lorg/threeten/bp/temporal/TemporalField;J)Lorg/threeten/bp/temporal/Temporal;

    move-result-object v0

    sget-object v1, Lorg/threeten/bp/temporal/ChronoField;->NANO_OF_DAY:Lorg/threeten/bp/temporal/ChronoField;

    invoke-virtual {p0}, Lorg/threeten/bp/chrono/ChronoLocalDateTime;->toLocalTime()Lorg/threeten/bp/LocalTime;

    move-result-object v2

    invoke-virtual {v2}, Lorg/threeten/bp/LocalTime;->toNanoOfDay()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Lorg/threeten/bp/temporal/Temporal;->with(Lorg/threeten/bp/temporal/TemporalField;J)Lorg/threeten/bp/temporal/Temporal;

    move-result-object v0

    return-object v0
.end method

.method public abstract atZone(Lorg/threeten/bp/ZoneId;)Lorg/threeten/bp/chrono/ChronoZonedDateTime;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/threeten/bp/ZoneId;",
            ")",
            "Lorg/threeten/bp/chrono/ChronoZonedDateTime",
            "<TD;>;"
        }
    .end annotation
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 93
    .local p0, "this":Lorg/threeten/bp/chrono/ChronoLocalDateTime;, "Lorg/threeten/bp/chrono/ChronoLocalDateTime<TD;>;"
    check-cast p1, Lorg/threeten/bp/chrono/ChronoLocalDateTime;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/threeten/bp/chrono/ChronoLocalDateTime;->compareTo(Lorg/threeten/bp/chrono/ChronoLocalDateTime;)I

    move-result v0

    return v0
.end method

.method public compareTo(Lorg/threeten/bp/chrono/ChronoLocalDateTime;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/threeten/bp/chrono/ChronoLocalDateTime",
            "<*>;)I"
        }
    .end annotation

    .prologue
    .line 356
    .local p0, "this":Lorg/threeten/bp/chrono/ChronoLocalDateTime;, "Lorg/threeten/bp/chrono/ChronoLocalDateTime<TD;>;"
    .local p1, "other":Lorg/threeten/bp/chrono/ChronoLocalDateTime;, "Lorg/threeten/bp/chrono/ChronoLocalDateTime<*>;"
    invoke-virtual {p0}, Lorg/threeten/bp/chrono/ChronoLocalDateTime;->toLocalDate()Lorg/threeten/bp/chrono/ChronoLocalDate;

    move-result-object v1

    invoke-virtual {p1}, Lorg/threeten/bp/chrono/ChronoLocalDateTime;->toLocalDate()Lorg/threeten/bp/chrono/ChronoLocalDate;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/threeten/bp/chrono/ChronoLocalDate;->compareTo(Lorg/threeten/bp/chrono/ChronoLocalDate;)I

    move-result v0

    .line 357
    .local v0, "cmp":I
    if-nez v0, :cond_0

    .line 358
    invoke-virtual {p0}, Lorg/threeten/bp/chrono/ChronoLocalDateTime;->toLocalTime()Lorg/threeten/bp/LocalTime;

    move-result-object v1

    invoke-virtual {p1}, Lorg/threeten/bp/chrono/ChronoLocalDateTime;->toLocalTime()Lorg/threeten/bp/LocalTime;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/threeten/bp/LocalTime;->compareTo(Lorg/threeten/bp/LocalTime;)I

    move-result v0

    .line 359
    if-nez v0, :cond_0

    .line 360
    invoke-virtual {p0}, Lorg/threeten/bp/chrono/ChronoLocalDateTime;->getChronology()Lorg/threeten/bp/chrono/Chronology;

    move-result-object v1

    invoke-virtual {p1}, Lorg/threeten/bp/chrono/ChronoLocalDateTime;->getChronology()Lorg/threeten/bp/chrono/Chronology;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/threeten/bp/chrono/Chronology;->compareTo(Lorg/threeten/bp/chrono/Chronology;)I

    move-result v0

    .line 363
    :cond_0
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Lorg/threeten/bp/chrono/ChronoLocalDateTime;, "Lorg/threeten/bp/chrono/ChronoLocalDateTime<TD;>;"
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 430
    if-ne p0, p1, :cond_1

    .line 436
    .end local p1    # "obj":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v0

    .line 433
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_1
    instance-of v2, p1, Lorg/threeten/bp/chrono/ChronoLocalDateTime;

    if-eqz v2, :cond_2

    .line 434
    check-cast p1, Lorg/threeten/bp/chrono/ChronoLocalDateTime;

    .end local p1    # "obj":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/threeten/bp/chrono/ChronoLocalDateTime;->compareTo(Lorg/threeten/bp/chrono/ChronoLocalDateTime;)I

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_2
    move v0, v1

    .line 436
    goto :goto_0
.end method

.method public format(Lorg/threeten/bp/format/DateTimeFormatter;)Ljava/lang/String;
    .locals 1
    .param p1, "formatter"    # Lorg/threeten/bp/format/DateTimeFormatter;

    .prologue
    .line 262
    .local p0, "this":Lorg/threeten/bp/chrono/ChronoLocalDateTime;, "Lorg/threeten/bp/chrono/ChronoLocalDateTime<TD;>;"
    const-string v0, "formatter"

    invoke-static {p1, v0}, Lorg/threeten/bp/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 263
    invoke-virtual {p1, p0}, Lorg/threeten/bp/format/DateTimeFormatter;->format(Lorg/threeten/bp/temporal/TemporalAccessor;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getChronology()Lorg/threeten/bp/chrono/Chronology;
    .locals 1

    .prologue
    .line 171
    .local p0, "this":Lorg/threeten/bp/chrono/ChronoLocalDateTime;, "Lorg/threeten/bp/chrono/ChronoLocalDateTime<TD;>;"
    invoke-virtual {p0}, Lorg/threeten/bp/chrono/ChronoLocalDateTime;->toLocalDate()Lorg/threeten/bp/chrono/ChronoLocalDate;

    move-result-object v0

    invoke-virtual {v0}, Lorg/threeten/bp/chrono/ChronoLocalDate;->getChronology()Lorg/threeten/bp/chrono/Chronology;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 446
    .local p0, "this":Lorg/threeten/bp/chrono/ChronoLocalDateTime;, "Lorg/threeten/bp/chrono/ChronoLocalDateTime<TD;>;"
    invoke-virtual {p0}, Lorg/threeten/bp/chrono/ChronoLocalDateTime;->toLocalDate()Lorg/threeten/bp/chrono/ChronoLocalDate;

    move-result-object v0

    invoke-virtual {v0}, Lorg/threeten/bp/chrono/ChronoLocalDate;->hashCode()I

    move-result v0

    invoke-virtual {p0}, Lorg/threeten/bp/chrono/ChronoLocalDateTime;->toLocalTime()Lorg/threeten/bp/LocalTime;

    move-result-object v1

    invoke-virtual {v1}, Lorg/threeten/bp/LocalTime;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public isAfter(Lorg/threeten/bp/chrono/ChronoLocalDateTime;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/threeten/bp/chrono/ChronoLocalDateTime",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 378
    .local p0, "this":Lorg/threeten/bp/chrono/ChronoLocalDateTime;, "Lorg/threeten/bp/chrono/ChronoLocalDateTime<TD;>;"
    .local p1, "other":Lorg/threeten/bp/chrono/ChronoLocalDateTime;, "Lorg/threeten/bp/chrono/ChronoLocalDateTime<*>;"
    invoke-virtual {p0}, Lorg/threeten/bp/chrono/ChronoLocalDateTime;->toLocalDate()Lorg/threeten/bp/chrono/ChronoLocalDate;

    move-result-object v4

    invoke-virtual {v4}, Lorg/threeten/bp/chrono/ChronoLocalDate;->toEpochDay()J

    move-result-wide v2

    .line 379
    .local v2, "thisEpDay":J
    invoke-virtual {p1}, Lorg/threeten/bp/chrono/ChronoLocalDateTime;->toLocalDate()Lorg/threeten/bp/chrono/ChronoLocalDate;

    move-result-object v4

    invoke-virtual {v4}, Lorg/threeten/bp/chrono/ChronoLocalDate;->toEpochDay()J

    move-result-wide v0

    .line 380
    .local v0, "otherEpDay":J
    cmp-long v4, v2, v0

    if-gtz v4, :cond_0

    cmp-long v4, v2, v0

    if-nez v4, :cond_1

    invoke-virtual {p0}, Lorg/threeten/bp/chrono/ChronoLocalDateTime;->toLocalTime()Lorg/threeten/bp/LocalTime;

    move-result-object v4

    invoke-virtual {v4}, Lorg/threeten/bp/LocalTime;->toNanoOfDay()J

    move-result-wide v4

    invoke-virtual {p1}, Lorg/threeten/bp/chrono/ChronoLocalDateTime;->toLocalTime()Lorg/threeten/bp/LocalTime;

    move-result-object v6

    invoke-virtual {v6}, Lorg/threeten/bp/LocalTime;->toNanoOfDay()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-lez v4, :cond_1

    :cond_0
    const/4 v4, 0x1

    :goto_0
    return v4

    :cond_1
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public isBefore(Lorg/threeten/bp/chrono/ChronoLocalDateTime;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/threeten/bp/chrono/ChronoLocalDateTime",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 396
    .local p0, "this":Lorg/threeten/bp/chrono/ChronoLocalDateTime;, "Lorg/threeten/bp/chrono/ChronoLocalDateTime<TD;>;"
    .local p1, "other":Lorg/threeten/bp/chrono/ChronoLocalDateTime;, "Lorg/threeten/bp/chrono/ChronoLocalDateTime<*>;"
    invoke-virtual {p0}, Lorg/threeten/bp/chrono/ChronoLocalDateTime;->toLocalDate()Lorg/threeten/bp/chrono/ChronoLocalDate;

    move-result-object v4

    invoke-virtual {v4}, Lorg/threeten/bp/chrono/ChronoLocalDate;->toEpochDay()J

    move-result-wide v2

    .line 397
    .local v2, "thisEpDay":J
    invoke-virtual {p1}, Lorg/threeten/bp/chrono/ChronoLocalDateTime;->toLocalDate()Lorg/threeten/bp/chrono/ChronoLocalDate;

    move-result-object v4

    invoke-virtual {v4}, Lorg/threeten/bp/chrono/ChronoLocalDate;->toEpochDay()J

    move-result-wide v0

    .line 398
    .local v0, "otherEpDay":J
    cmp-long v4, v2, v0

    if-ltz v4, :cond_0

    cmp-long v4, v2, v0

    if-nez v4, :cond_1

    invoke-virtual {p0}, Lorg/threeten/bp/chrono/ChronoLocalDateTime;->toLocalTime()Lorg/threeten/bp/LocalTime;

    move-result-object v4

    invoke-virtual {v4}, Lorg/threeten/bp/LocalTime;->toNanoOfDay()J

    move-result-wide v4

    invoke-virtual {p1}, Lorg/threeten/bp/chrono/ChronoLocalDateTime;->toLocalTime()Lorg/threeten/bp/LocalTime;

    move-result-object v6

    invoke-virtual {v6}, Lorg/threeten/bp/LocalTime;->toNanoOfDay()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-gez v4, :cond_1

    :cond_0
    const/4 v4, 0x1

    :goto_0
    return v4

    :cond_1
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public isEqual(Lorg/threeten/bp/chrono/ChronoLocalDateTime;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/threeten/bp/chrono/ChronoLocalDateTime",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 415
    .local p0, "this":Lorg/threeten/bp/chrono/ChronoLocalDateTime;, "Lorg/threeten/bp/chrono/ChronoLocalDateTime<TD;>;"
    .local p1, "other":Lorg/threeten/bp/chrono/ChronoLocalDateTime;, "Lorg/threeten/bp/chrono/ChronoLocalDateTime<*>;"
    invoke-virtual {p0}, Lorg/threeten/bp/chrono/ChronoLocalDateTime;->toLocalTime()Lorg/threeten/bp/LocalTime;

    move-result-object v0

    invoke-virtual {v0}, Lorg/threeten/bp/LocalTime;->toNanoOfDay()J

    move-result-wide v0

    invoke-virtual {p1}, Lorg/threeten/bp/chrono/ChronoLocalDateTime;->toLocalTime()Lorg/threeten/bp/LocalTime;

    move-result-object v2

    invoke-virtual {v2}, Lorg/threeten/bp/LocalTime;->toNanoOfDay()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/threeten/bp/chrono/ChronoLocalDateTime;->toLocalDate()Lorg/threeten/bp/chrono/ChronoLocalDate;

    move-result-object v0

    invoke-virtual {v0}, Lorg/threeten/bp/chrono/ChronoLocalDate;->toEpochDay()J

    move-result-wide v0

    invoke-virtual {p1}, Lorg/threeten/bp/chrono/ChronoLocalDateTime;->toLocalDate()Lorg/threeten/bp/chrono/ChronoLocalDate;

    move-result-object v2

    invoke-virtual {v2}, Lorg/threeten/bp/chrono/ChronoLocalDate;->toEpochDay()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public minus(JLorg/threeten/bp/temporal/TemporalUnit;)Lorg/threeten/bp/chrono/ChronoLocalDateTime;
    .locals 3
    .param p1, "amountToSubtract"    # J
    .param p3, "unit"    # Lorg/threeten/bp/temporal/TemporalUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lorg/threeten/bp/temporal/TemporalUnit;",
            ")",
            "Lorg/threeten/bp/chrono/ChronoLocalDateTime",
            "<TD;>;"
        }
    .end annotation

    .prologue
    .line 219
    .local p0, "this":Lorg/threeten/bp/chrono/ChronoLocalDateTime;, "Lorg/threeten/bp/chrono/ChronoLocalDateTime<TD;>;"
    invoke-virtual {p0}, Lorg/threeten/bp/chrono/ChronoLocalDateTime;->toLocalDate()Lorg/threeten/bp/chrono/ChronoLocalDate;

    move-result-object v0

    invoke-virtual {v0}, Lorg/threeten/bp/chrono/ChronoLocalDate;->getChronology()Lorg/threeten/bp/chrono/Chronology;

    move-result-object v0

    invoke-super {p0, p1, p2, p3}, Lorg/threeten/bp/jdk8/DefaultInterfaceTemporal;->minus(JLorg/threeten/bp/temporal/TemporalUnit;)Lorg/threeten/bp/temporal/Temporal;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/threeten/bp/chrono/Chronology;->ensureChronoLocalDateTime(Lorg/threeten/bp/temporal/Temporal;)Lorg/threeten/bp/chrono/ChronoLocalDateTimeImpl;

    move-result-object v0

    return-object v0
.end method

.method public minus(Lorg/threeten/bp/temporal/TemporalAmount;)Lorg/threeten/bp/chrono/ChronoLocalDateTime;
    .locals 2
    .param p1, "amount"    # Lorg/threeten/bp/temporal/TemporalAmount;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/threeten/bp/temporal/TemporalAmount;",
            ")",
            "Lorg/threeten/bp/chrono/ChronoLocalDateTime",
            "<TD;>;"
        }
    .end annotation

    .prologue
    .line 214
    .local p0, "this":Lorg/threeten/bp/chrono/ChronoLocalDateTime;, "Lorg/threeten/bp/chrono/ChronoLocalDateTime<TD;>;"
    invoke-virtual {p0}, Lorg/threeten/bp/chrono/ChronoLocalDateTime;->toLocalDate()Lorg/threeten/bp/chrono/ChronoLocalDate;

    move-result-object v0

    invoke-virtual {v0}, Lorg/threeten/bp/chrono/ChronoLocalDate;->getChronology()Lorg/threeten/bp/chrono/Chronology;

    move-result-object v0

    invoke-super {p0, p1}, Lorg/threeten/bp/jdk8/DefaultInterfaceTemporal;->minus(Lorg/threeten/bp/temporal/TemporalAmount;)Lorg/threeten/bp/temporal/Temporal;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/threeten/bp/chrono/Chronology;->ensureChronoLocalDateTime(Lorg/threeten/bp/temporal/Temporal;)Lorg/threeten/bp/chrono/ChronoLocalDateTimeImpl;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic minus(JLorg/threeten/bp/temporal/TemporalUnit;)Lorg/threeten/bp/temporal/Temporal;
    .locals 1
    .param p1, "x0"    # J
    .param p3, "x1"    # Lorg/threeten/bp/temporal/TemporalUnit;

    .prologue
    .line 93
    .local p0, "this":Lorg/threeten/bp/chrono/ChronoLocalDateTime;, "Lorg/threeten/bp/chrono/ChronoLocalDateTime<TD;>;"
    invoke-virtual {p0, p1, p2, p3}, Lorg/threeten/bp/chrono/ChronoLocalDateTime;->minus(JLorg/threeten/bp/temporal/TemporalUnit;)Lorg/threeten/bp/chrono/ChronoLocalDateTime;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic minus(Lorg/threeten/bp/temporal/TemporalAmount;)Lorg/threeten/bp/temporal/Temporal;
    .locals 1
    .param p1, "x0"    # Lorg/threeten/bp/temporal/TemporalAmount;

    .prologue
    .line 93
    .local p0, "this":Lorg/threeten/bp/chrono/ChronoLocalDateTime;, "Lorg/threeten/bp/chrono/ChronoLocalDateTime<TD;>;"
    invoke-virtual {p0, p1}, Lorg/threeten/bp/chrono/ChronoLocalDateTime;->minus(Lorg/threeten/bp/temporal/TemporalAmount;)Lorg/threeten/bp/chrono/ChronoLocalDateTime;

    move-result-object v0

    return-object v0
.end method

.method public abstract plus(JLorg/threeten/bp/temporal/TemporalUnit;)Lorg/threeten/bp/chrono/ChronoLocalDateTime;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lorg/threeten/bp/temporal/TemporalUnit;",
            ")",
            "Lorg/threeten/bp/chrono/ChronoLocalDateTime",
            "<TD;>;"
        }
    .end annotation
.end method

.method public plus(Lorg/threeten/bp/temporal/TemporalAmount;)Lorg/threeten/bp/chrono/ChronoLocalDateTime;
    .locals 2
    .param p1, "amount"    # Lorg/threeten/bp/temporal/TemporalAmount;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/threeten/bp/temporal/TemporalAmount;",
            ")",
            "Lorg/threeten/bp/chrono/ChronoLocalDateTime",
            "<TD;>;"
        }
    .end annotation

    .prologue
    .line 206
    .local p0, "this":Lorg/threeten/bp/chrono/ChronoLocalDateTime;, "Lorg/threeten/bp/chrono/ChronoLocalDateTime<TD;>;"
    invoke-virtual {p0}, Lorg/threeten/bp/chrono/ChronoLocalDateTime;->toLocalDate()Lorg/threeten/bp/chrono/ChronoLocalDate;

    move-result-object v0

    invoke-virtual {v0}, Lorg/threeten/bp/chrono/ChronoLocalDate;->getChronology()Lorg/threeten/bp/chrono/Chronology;

    move-result-object v0

    invoke-super {p0, p1}, Lorg/threeten/bp/jdk8/DefaultInterfaceTemporal;->plus(Lorg/threeten/bp/temporal/TemporalAmount;)Lorg/threeten/bp/temporal/Temporal;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/threeten/bp/chrono/Chronology;->ensureChronoLocalDateTime(Lorg/threeten/bp/temporal/Temporal;)Lorg/threeten/bp/chrono/ChronoLocalDateTimeImpl;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic plus(JLorg/threeten/bp/temporal/TemporalUnit;)Lorg/threeten/bp/temporal/Temporal;
    .locals 1
    .param p1, "x0"    # J
    .param p3, "x1"    # Lorg/threeten/bp/temporal/TemporalUnit;

    .prologue
    .line 93
    .local p0, "this":Lorg/threeten/bp/chrono/ChronoLocalDateTime;, "Lorg/threeten/bp/chrono/ChronoLocalDateTime<TD;>;"
    invoke-virtual {p0, p1, p2, p3}, Lorg/threeten/bp/chrono/ChronoLocalDateTime;->plus(JLorg/threeten/bp/temporal/TemporalUnit;)Lorg/threeten/bp/chrono/ChronoLocalDateTime;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic plus(Lorg/threeten/bp/temporal/TemporalAmount;)Lorg/threeten/bp/temporal/Temporal;
    .locals 1
    .param p1, "x0"    # Lorg/threeten/bp/temporal/TemporalAmount;

    .prologue
    .line 93
    .local p0, "this":Lorg/threeten/bp/chrono/ChronoLocalDateTime;, "Lorg/threeten/bp/chrono/ChronoLocalDateTime<TD;>;"
    invoke-virtual {p0, p1}, Lorg/threeten/bp/chrono/ChronoLocalDateTime;->plus(Lorg/threeten/bp/temporal/TemporalAmount;)Lorg/threeten/bp/chrono/ChronoLocalDateTime;

    move-result-object v0

    return-object v0
.end method

.method public query(Lorg/threeten/bp/temporal/TemporalQuery;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/threeten/bp/temporal/TemporalQuery",
            "<TR;>;)TR;"
        }
    .end annotation

    .prologue
    .line 226
    .local p0, "this":Lorg/threeten/bp/chrono/ChronoLocalDateTime;, "Lorg/threeten/bp/chrono/ChronoLocalDateTime<TD;>;"
    .local p1, "query":Lorg/threeten/bp/temporal/TemporalQuery;, "Lorg/threeten/bp/temporal/TemporalQuery<TR;>;"
    invoke-static {}, Lorg/threeten/bp/temporal/TemporalQueries;->chronology()Lorg/threeten/bp/temporal/TemporalQuery;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 227
    invoke-virtual {p0}, Lorg/threeten/bp/chrono/ChronoLocalDateTime;->getChronology()Lorg/threeten/bp/chrono/Chronology;

    move-result-object v0

    .line 237
    :goto_0
    return-object v0

    .line 228
    :cond_0
    invoke-static {}, Lorg/threeten/bp/temporal/TemporalQueries;->precision()Lorg/threeten/bp/temporal/TemporalQuery;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 229
    sget-object v0, Lorg/threeten/bp/temporal/ChronoUnit;->NANOS:Lorg/threeten/bp/temporal/ChronoUnit;

    goto :goto_0

    .line 230
    :cond_1
    invoke-static {}, Lorg/threeten/bp/temporal/TemporalQueries;->localDate()Lorg/threeten/bp/temporal/TemporalQuery;

    move-result-object v0

    if-ne p1, v0, :cond_2

    .line 231
    invoke-virtual {p0}, Lorg/threeten/bp/chrono/ChronoLocalDateTime;->toLocalDate()Lorg/threeten/bp/chrono/ChronoLocalDate;

    move-result-object v0

    invoke-virtual {v0}, Lorg/threeten/bp/chrono/ChronoLocalDate;->toEpochDay()J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/threeten/bp/LocalDate;->ofEpochDay(J)Lorg/threeten/bp/LocalDate;

    move-result-object v0

    goto :goto_0

    .line 232
    :cond_2
    invoke-static {}, Lorg/threeten/bp/temporal/TemporalQueries;->localTime()Lorg/threeten/bp/temporal/TemporalQuery;

    move-result-object v0

    if-ne p1, v0, :cond_3

    .line 233
    invoke-virtual {p0}, Lorg/threeten/bp/chrono/ChronoLocalDateTime;->toLocalTime()Lorg/threeten/bp/LocalTime;

    move-result-object v0

    goto :goto_0

    .line 234
    :cond_3
    invoke-static {}, Lorg/threeten/bp/temporal/TemporalQueries;->zone()Lorg/threeten/bp/temporal/TemporalQuery;

    move-result-object v0

    if-eq p1, v0, :cond_4

    invoke-static {}, Lorg/threeten/bp/temporal/TemporalQueries;->zoneId()Lorg/threeten/bp/temporal/TemporalQuery;

    move-result-object v0

    if-eq p1, v0, :cond_4

    invoke-static {}, Lorg/threeten/bp/temporal/TemporalQueries;->offset()Lorg/threeten/bp/temporal/TemporalQuery;

    move-result-object v0

    if-ne p1, v0, :cond_5

    .line 235
    :cond_4
    const/4 v0, 0x0

    goto :goto_0

    .line 237
    :cond_5
    invoke-super {p0, p1}, Lorg/threeten/bp/jdk8/DefaultInterfaceTemporal;->query(Lorg/threeten/bp/temporal/TemporalQuery;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public toEpochSecond(Lorg/threeten/bp/ZoneOffset;)J
    .locals 8
    .param p1, "offset"    # Lorg/threeten/bp/ZoneOffset;

    .prologue
    .line 322
    .local p0, "this":Lorg/threeten/bp/chrono/ChronoLocalDateTime;, "Lorg/threeten/bp/chrono/ChronoLocalDateTime<TD;>;"
    const-string v4, "offset"

    invoke-static {p1, v4}, Lorg/threeten/bp/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 323
    invoke-virtual {p0}, Lorg/threeten/bp/chrono/ChronoLocalDateTime;->toLocalDate()Lorg/threeten/bp/chrono/ChronoLocalDate;

    move-result-object v4

    invoke-virtual {v4}, Lorg/threeten/bp/chrono/ChronoLocalDate;->toEpochDay()J

    move-result-wide v0

    .line 324
    .local v0, "epochDay":J
    const-wide/32 v4, 0x15180

    mul-long/2addr v4, v0

    invoke-virtual {p0}, Lorg/threeten/bp/chrono/ChronoLocalDateTime;->toLocalTime()Lorg/threeten/bp/LocalTime;

    move-result-object v6

    invoke-virtual {v6}, Lorg/threeten/bp/LocalTime;->toSecondOfDay()I

    move-result v6

    int-to-long v6, v6

    add-long v2, v4, v6

    .line 325
    .local v2, "secs":J
    invoke-virtual {p1}, Lorg/threeten/bp/ZoneOffset;->getTotalSeconds()I

    move-result v4

    int-to-long v4, v4

    sub-long/2addr v2, v4

    .line 326
    return-wide v2
.end method

.method public toInstant(Lorg/threeten/bp/ZoneOffset;)Lorg/threeten/bp/Instant;
    .locals 4
    .param p1, "offset"    # Lorg/threeten/bp/ZoneOffset;

    .prologue
    .line 307
    .local p0, "this":Lorg/threeten/bp/chrono/ChronoLocalDateTime;, "Lorg/threeten/bp/chrono/ChronoLocalDateTime<TD;>;"
    invoke-virtual {p0, p1}, Lorg/threeten/bp/chrono/ChronoLocalDateTime;->toEpochSecond(Lorg/threeten/bp/ZoneOffset;)J

    move-result-wide v0

    invoke-virtual {p0}, Lorg/threeten/bp/chrono/ChronoLocalDateTime;->toLocalTime()Lorg/threeten/bp/LocalTime;

    move-result-object v2

    invoke-virtual {v2}, Lorg/threeten/bp/LocalTime;->getNano()I

    move-result v2

    int-to-long v2, v2

    invoke-static {v0, v1, v2, v3}, Lorg/threeten/bp/Instant;->ofEpochSecond(JJ)Lorg/threeten/bp/Instant;

    move-result-object v0

    return-object v0
.end method

.method public abstract toLocalDate()Lorg/threeten/bp/chrono/ChronoLocalDate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TD;"
        }
    .end annotation
.end method

.method public abstract toLocalTime()Lorg/threeten/bp/LocalTime;
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 459
    .local p0, "this":Lorg/threeten/bp/chrono/ChronoLocalDateTime;, "Lorg/threeten/bp/chrono/ChronoLocalDateTime<TD;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/threeten/bp/chrono/ChronoLocalDateTime;->toLocalDate()Lorg/threeten/bp/chrono/ChronoLocalDate;

    move-result-object v1

    invoke-virtual {v1}, Lorg/threeten/bp/chrono/ChronoLocalDate;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x54

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/threeten/bp/chrono/ChronoLocalDateTime;->toLocalTime()Lorg/threeten/bp/LocalTime;

    move-result-object v1

    invoke-virtual {v1}, Lorg/threeten/bp/LocalTime;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public with(Lorg/threeten/bp/temporal/TemporalAdjuster;)Lorg/threeten/bp/chrono/ChronoLocalDateTime;
    .locals 2
    .param p1, "adjuster"    # Lorg/threeten/bp/temporal/TemporalAdjuster;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/threeten/bp/temporal/TemporalAdjuster;",
            ")",
            "Lorg/threeten/bp/chrono/ChronoLocalDateTime",
            "<TD;>;"
        }
    .end annotation

    .prologue
    .line 198
    .local p0, "this":Lorg/threeten/bp/chrono/ChronoLocalDateTime;, "Lorg/threeten/bp/chrono/ChronoLocalDateTime<TD;>;"
    invoke-virtual {p0}, Lorg/threeten/bp/chrono/ChronoLocalDateTime;->toLocalDate()Lorg/threeten/bp/chrono/ChronoLocalDate;

    move-result-object v0

    invoke-virtual {v0}, Lorg/threeten/bp/chrono/ChronoLocalDate;->getChronology()Lorg/threeten/bp/chrono/Chronology;

    move-result-object v0

    invoke-super {p0, p1}, Lorg/threeten/bp/jdk8/DefaultInterfaceTemporal;->with(Lorg/threeten/bp/temporal/TemporalAdjuster;)Lorg/threeten/bp/temporal/Temporal;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/threeten/bp/chrono/Chronology;->ensureChronoLocalDateTime(Lorg/threeten/bp/temporal/Temporal;)Lorg/threeten/bp/chrono/ChronoLocalDateTimeImpl;

    move-result-object v0

    return-object v0
.end method

.method public abstract with(Lorg/threeten/bp/temporal/TemporalField;J)Lorg/threeten/bp/chrono/ChronoLocalDateTime;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/threeten/bp/temporal/TemporalField;",
            "J)",
            "Lorg/threeten/bp/chrono/ChronoLocalDateTime",
            "<TD;>;"
        }
    .end annotation
.end method

.method public bridge synthetic with(Lorg/threeten/bp/temporal/TemporalAdjuster;)Lorg/threeten/bp/temporal/Temporal;
    .locals 1
    .param p1, "x0"    # Lorg/threeten/bp/temporal/TemporalAdjuster;

    .prologue
    .line 93
    .local p0, "this":Lorg/threeten/bp/chrono/ChronoLocalDateTime;, "Lorg/threeten/bp/chrono/ChronoLocalDateTime<TD;>;"
    invoke-virtual {p0, p1}, Lorg/threeten/bp/chrono/ChronoLocalDateTime;->with(Lorg/threeten/bp/temporal/TemporalAdjuster;)Lorg/threeten/bp/chrono/ChronoLocalDateTime;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic with(Lorg/threeten/bp/temporal/TemporalField;J)Lorg/threeten/bp/temporal/Temporal;
    .locals 2
    .param p1, "x0"    # Lorg/threeten/bp/temporal/TemporalField;
    .param p2, "x1"    # J

    .prologue
    .line 93
    .local p0, "this":Lorg/threeten/bp/chrono/ChronoLocalDateTime;, "Lorg/threeten/bp/chrono/ChronoLocalDateTime<TD;>;"
    invoke-virtual {p0, p1, p2, p3}, Lorg/threeten/bp/chrono/ChronoLocalDateTime;->with(Lorg/threeten/bp/temporal/TemporalField;J)Lorg/threeten/bp/chrono/ChronoLocalDateTime;

    move-result-object v0

    return-object v0
.end method
