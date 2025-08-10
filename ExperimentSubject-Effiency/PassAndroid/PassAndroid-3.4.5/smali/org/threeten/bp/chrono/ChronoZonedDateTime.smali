.class public abstract Lorg/threeten/bp/chrono/ChronoZonedDateTime;
.super Lorg/threeten/bp/jdk8/DefaultInterfaceTemporal;
.source "ChronoZonedDateTime.java"

# interfaces
.implements Lorg/threeten/bp/temporal/Temporal;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/threeten/bp/chrono/ChronoZonedDateTime$2;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<D:",
        "Lorg/threeten/bp/chrono/ChronoLocalDate;",
        ">",
        "Lorg/threeten/bp/jdk8/DefaultInterfaceTemporal;",
        "Lorg/threeten/bp/temporal/Temporal;",
        "Ljava/lang/Comparable",
        "<",
        "Lorg/threeten/bp/chrono/ChronoZonedDateTime",
        "<*>;>;"
    }
.end annotation


# static fields
.field private static INSTANT_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lorg/threeten/bp/chrono/ChronoZonedDateTime",
            "<*>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 116
    new-instance v0, Lorg/threeten/bp/chrono/ChronoZonedDateTime$1;

    invoke-direct {v0}, Lorg/threeten/bp/chrono/ChronoZonedDateTime$1;-><init>()V

    sput-object v0, Lorg/threeten/bp/chrono/ChronoZonedDateTime;->INSTANT_COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 94
    .local p0, "this":Lorg/threeten/bp/chrono/ChronoZonedDateTime;, "Lorg/threeten/bp/chrono/ChronoZonedDateTime<TD;>;"
    invoke-direct {p0}, Lorg/threeten/bp/jdk8/DefaultInterfaceTemporal;-><init>()V

    .line 178
    return-void
.end method

.method public static from(Lorg/threeten/bp/temporal/TemporalAccessor;)Lorg/threeten/bp/chrono/ChronoZonedDateTime;
    .locals 4
    .param p0, "temporal"    # Lorg/threeten/bp/temporal/TemporalAccessor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/threeten/bp/temporal/TemporalAccessor;",
            ")",
            "Lorg/threeten/bp/chrono/ChronoZonedDateTime",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 150
    const-string v1, "temporal"

    invoke-static {p0, v1}, Lorg/threeten/bp/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 151
    instance-of v1, p0, Lorg/threeten/bp/chrono/ChronoZonedDateTime;

    if-eqz v1, :cond_0

    .line 152
    check-cast p0, Lorg/threeten/bp/chrono/ChronoZonedDateTime;

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

    const-string v3, "No Chronology found to create ChronoZonedDateTime: "

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
    invoke-virtual {v0, p0}, Lorg/threeten/bp/chrono/Chronology;->zonedDateTime(Lorg/threeten/bp/temporal/TemporalAccessor;)Lorg/threeten/bp/chrono/ChronoZonedDateTime;

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
            "Lorg/threeten/bp/chrono/ChronoZonedDateTime",
            "<*>;>;"
        }
    .end annotation

    .prologue
    .line 114
    sget-object v0, Lorg/threeten/bp/chrono/ChronoZonedDateTime;->INSTANT_COMPARATOR:Ljava/util/Comparator;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 94
    .local p0, "this":Lorg/threeten/bp/chrono/ChronoZonedDateTime;, "Lorg/threeten/bp/chrono/ChronoZonedDateTime<TD;>;"
    check-cast p1, Lorg/threeten/bp/chrono/ChronoZonedDateTime;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/threeten/bp/chrono/ChronoZonedDateTime;->compareTo(Lorg/threeten/bp/chrono/ChronoZonedDateTime;)I

    move-result v0

    return v0
.end method

.method public compareTo(Lorg/threeten/bp/chrono/ChronoZonedDateTime;)I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/threeten/bp/chrono/ChronoZonedDateTime",
            "<*>;)I"
        }
    .end annotation

    .prologue
    .line 449
    .local p0, "this":Lorg/threeten/bp/chrono/ChronoZonedDateTime;, "Lorg/threeten/bp/chrono/ChronoZonedDateTime<TD;>;"
    .local p1, "other":Lorg/threeten/bp/chrono/ChronoZonedDateTime;, "Lorg/threeten/bp/chrono/ChronoZonedDateTime<*>;"
    invoke-virtual {p0}, Lorg/threeten/bp/chrono/ChronoZonedDateTime;->toEpochSecond()J

    move-result-wide v2

    invoke-virtual {p1}, Lorg/threeten/bp/chrono/ChronoZonedDateTime;->toEpochSecond()J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Lorg/threeten/bp/jdk8/Jdk8Methods;->compareLongs(JJ)I

    move-result v0

    .line 450
    .local v0, "cmp":I
    if-nez v0, :cond_0

    .line 451
    invoke-virtual {p0}, Lorg/threeten/bp/chrono/ChronoZonedDateTime;->toLocalTime()Lorg/threeten/bp/LocalTime;

    move-result-object v1

    invoke-virtual {v1}, Lorg/threeten/bp/LocalTime;->getNano()I

    move-result v1

    invoke-virtual {p1}, Lorg/threeten/bp/chrono/ChronoZonedDateTime;->toLocalTime()Lorg/threeten/bp/LocalTime;

    move-result-object v2

    invoke-virtual {v2}, Lorg/threeten/bp/LocalTime;->getNano()I

    move-result v2

    sub-int v0, v1, v2

    .line 452
    if-nez v0, :cond_0

    .line 453
    invoke-virtual {p0}, Lorg/threeten/bp/chrono/ChronoZonedDateTime;->toLocalDateTime()Lorg/threeten/bp/chrono/ChronoLocalDateTime;

    move-result-object v1

    invoke-virtual {p1}, Lorg/threeten/bp/chrono/ChronoZonedDateTime;->toLocalDateTime()Lorg/threeten/bp/chrono/ChronoLocalDateTime;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/threeten/bp/chrono/ChronoLocalDateTime;->compareTo(Lorg/threeten/bp/chrono/ChronoLocalDateTime;)I

    move-result v0

    .line 454
    if-nez v0, :cond_0

    .line 455
    invoke-virtual {p0}, Lorg/threeten/bp/chrono/ChronoZonedDateTime;->getZone()Lorg/threeten/bp/ZoneId;

    move-result-object v1

    invoke-virtual {v1}, Lorg/threeten/bp/ZoneId;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lorg/threeten/bp/chrono/ChronoZonedDateTime;->getZone()Lorg/threeten/bp/ZoneId;

    move-result-object v2

    invoke-virtual {v2}, Lorg/threeten/bp/ZoneId;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    .line 456
    if-nez v0, :cond_0

    .line 457
    invoke-virtual {p0}, Lorg/threeten/bp/chrono/ChronoZonedDateTime;->toLocalDate()Lorg/threeten/bp/chrono/ChronoLocalDate;

    move-result-object v1

    invoke-virtual {v1}, Lorg/threeten/bp/chrono/ChronoLocalDate;->getChronology()Lorg/threeten/bp/chrono/Chronology;

    move-result-object v1

    invoke-virtual {p1}, Lorg/threeten/bp/chrono/ChronoZonedDateTime;->toLocalDate()Lorg/threeten/bp/chrono/ChronoLocalDate;

    move-result-object v2

    invoke-virtual {v2}, Lorg/threeten/bp/chrono/ChronoLocalDate;->getChronology()Lorg/threeten/bp/chrono/Chronology;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/threeten/bp/chrono/Chronology;->compareTo(Lorg/threeten/bp/chrono/Chronology;)I

    move-result v0

    .line 462
    :cond_0
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Lorg/threeten/bp/chrono/ChronoZonedDateTime;, "Lorg/threeten/bp/chrono/ChronoZonedDateTime<TD;>;"
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 528
    if-ne p0, p1, :cond_1

    .line 534
    .end local p1    # "obj":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v0

    .line 531
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_1
    instance-of v2, p1, Lorg/threeten/bp/chrono/ChronoZonedDateTime;

    if-eqz v2, :cond_2

    .line 532
    check-cast p1, Lorg/threeten/bp/chrono/ChronoZonedDateTime;

    .end local p1    # "obj":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/threeten/bp/chrono/ChronoZonedDateTime;->compareTo(Lorg/threeten/bp/chrono/ChronoZonedDateTime;)I

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_2
    move v0, v1

    .line 534
    goto :goto_0
.end method

.method public format(Lorg/threeten/bp/format/DateTimeFormatter;)Ljava/lang/String;
    .locals 1
    .param p1, "formatter"    # Lorg/threeten/bp/format/DateTimeFormatter;

    .prologue
    .line 396
    .local p0, "this":Lorg/threeten/bp/chrono/ChronoZonedDateTime;, "Lorg/threeten/bp/chrono/ChronoZonedDateTime<TD;>;"
    const-string v0, "formatter"

    invoke-static {p1, v0}, Lorg/threeten/bp/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 397
    invoke-virtual {p1, p0}, Lorg/threeten/bp/format/DateTimeFormatter;->format(Lorg/threeten/bp/temporal/TemporalAccessor;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public get(Lorg/threeten/bp/temporal/TemporalField;)I
    .locals 3
    .param p1, "field"    # Lorg/threeten/bp/temporal/TemporalField;

    .prologue
    .line 175
    .local p0, "this":Lorg/threeten/bp/chrono/ChronoZonedDateTime;, "Lorg/threeten/bp/chrono/ChronoZonedDateTime<TD;>;"
    instance-of v0, p1, Lorg/threeten/bp/temporal/ChronoField;

    if-eqz v0, :cond_0

    .line 176
    sget-object v1, Lorg/threeten/bp/chrono/ChronoZonedDateTime$2;->$SwitchMap$org$threeten$bp$temporal$ChronoField:[I

    move-object v0, p1

    check-cast v0, Lorg/threeten/bp/temporal/ChronoField;

    invoke-virtual {v0}, Lorg/threeten/bp/temporal/ChronoField;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 180
    invoke-virtual {p0}, Lorg/threeten/bp/chrono/ChronoZonedDateTime;->toLocalDateTime()Lorg/threeten/bp/chrono/ChronoLocalDateTime;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/threeten/bp/chrono/ChronoLocalDateTime;->get(Lorg/threeten/bp/temporal/TemporalField;)I

    move-result v0

    .line 182
    :goto_0
    return v0

    .line 177
    :pswitch_0
    new-instance v0, Lorg/threeten/bp/temporal/UnsupportedTemporalTypeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Field too large for an int: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/threeten/bp/temporal/UnsupportedTemporalTypeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 178
    :pswitch_1
    invoke-virtual {p0}, Lorg/threeten/bp/chrono/ChronoZonedDateTime;->getOffset()Lorg/threeten/bp/ZoneOffset;

    move-result-object v0

    invoke-virtual {v0}, Lorg/threeten/bp/ZoneOffset;->getTotalSeconds()I

    move-result v0

    goto :goto_0

    .line 182
    :cond_0
    invoke-super {p0, p1}, Lorg/threeten/bp/jdk8/DefaultInterfaceTemporal;->get(Lorg/threeten/bp/temporal/TemporalField;)I

    move-result v0

    goto :goto_0

    .line 176
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getChronology()Lorg/threeten/bp/chrono/Chronology;
    .locals 1

    .prologue
    .line 241
    .local p0, "this":Lorg/threeten/bp/chrono/ChronoZonedDateTime;, "Lorg/threeten/bp/chrono/ChronoZonedDateTime<TD;>;"
    invoke-virtual {p0}, Lorg/threeten/bp/chrono/ChronoZonedDateTime;->toLocalDate()Lorg/threeten/bp/chrono/ChronoLocalDate;

    move-result-object v0

    invoke-virtual {v0}, Lorg/threeten/bp/chrono/ChronoLocalDate;->getChronology()Lorg/threeten/bp/chrono/Chronology;

    move-result-object v0

    return-object v0
.end method

.method public getLong(Lorg/threeten/bp/temporal/TemporalField;)J
    .locals 2
    .param p1, "field"    # Lorg/threeten/bp/temporal/TemporalField;

    .prologue
    .line 187
    .local p0, "this":Lorg/threeten/bp/chrono/ChronoZonedDateTime;, "Lorg/threeten/bp/chrono/ChronoZonedDateTime<TD;>;"
    instance-of v0, p1, Lorg/threeten/bp/temporal/ChronoField;

    if-eqz v0, :cond_0

    .line 188
    sget-object v1, Lorg/threeten/bp/chrono/ChronoZonedDateTime$2;->$SwitchMap$org$threeten$bp$temporal$ChronoField:[I

    move-object v0, p1

    check-cast v0, Lorg/threeten/bp/temporal/ChronoField;

    invoke-virtual {v0}, Lorg/threeten/bp/temporal/ChronoField;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 192
    invoke-virtual {p0}, Lorg/threeten/bp/chrono/ChronoZonedDateTime;->toLocalDateTime()Lorg/threeten/bp/chrono/ChronoLocalDateTime;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/threeten/bp/chrono/ChronoLocalDateTime;->getLong(Lorg/threeten/bp/temporal/TemporalField;)J

    move-result-wide v0

    .line 194
    :goto_0
    return-wide v0

    .line 189
    :pswitch_0
    invoke-virtual {p0}, Lorg/threeten/bp/chrono/ChronoZonedDateTime;->toEpochSecond()J

    move-result-wide v0

    goto :goto_0

    .line 190
    :pswitch_1
    invoke-virtual {p0}, Lorg/threeten/bp/chrono/ChronoZonedDateTime;->getOffset()Lorg/threeten/bp/ZoneOffset;

    move-result-object v0

    invoke-virtual {v0}, Lorg/threeten/bp/ZoneOffset;->getTotalSeconds()I

    move-result v0

    int-to-long v0, v0

    goto :goto_0

    .line 194
    :cond_0
    invoke-interface {p1, p0}, Lorg/threeten/bp/temporal/TemporalField;->getFrom(Lorg/threeten/bp/temporal/TemporalAccessor;)J

    move-result-wide v0

    goto :goto_0

    .line 188
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public abstract getOffset()Lorg/threeten/bp/ZoneOffset;
.end method

.method public abstract getZone()Lorg/threeten/bp/ZoneId;
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 544
    .local p0, "this":Lorg/threeten/bp/chrono/ChronoZonedDateTime;, "Lorg/threeten/bp/chrono/ChronoZonedDateTime<TD;>;"
    invoke-virtual {p0}, Lorg/threeten/bp/chrono/ChronoZonedDateTime;->toLocalDateTime()Lorg/threeten/bp/chrono/ChronoLocalDateTime;

    move-result-object v0

    invoke-virtual {v0}, Lorg/threeten/bp/chrono/ChronoLocalDateTime;->hashCode()I

    move-result v0

    invoke-virtual {p0}, Lorg/threeten/bp/chrono/ChronoZonedDateTime;->getOffset()Lorg/threeten/bp/ZoneOffset;

    move-result-object v1

    invoke-virtual {v1}, Lorg/threeten/bp/ZoneOffset;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    invoke-virtual {p0}, Lorg/threeten/bp/chrono/ChronoZonedDateTime;->getZone()Lorg/threeten/bp/ZoneId;

    move-result-object v1

    invoke-virtual {v1}, Lorg/threeten/bp/ZoneId;->hashCode()I

    move-result v1

    const/4 v2, 0x3

    invoke-static {v1, v2}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public isAfter(Lorg/threeten/bp/chrono/ChronoZonedDateTime;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/threeten/bp/chrono/ChronoZonedDateTime",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 477
    .local p0, "this":Lorg/threeten/bp/chrono/ChronoZonedDateTime;, "Lorg/threeten/bp/chrono/ChronoZonedDateTime<TD;>;"
    .local p1, "other":Lorg/threeten/bp/chrono/ChronoZonedDateTime;, "Lorg/threeten/bp/chrono/ChronoZonedDateTime<*>;"
    invoke-virtual {p0}, Lorg/threeten/bp/chrono/ChronoZonedDateTime;->toEpochSecond()J

    move-result-wide v2

    .line 478
    .local v2, "thisEpochSec":J
    invoke-virtual {p1}, Lorg/threeten/bp/chrono/ChronoZonedDateTime;->toEpochSecond()J

    move-result-wide v0

    .line 479
    .local v0, "otherEpochSec":J
    cmp-long v4, v2, v0

    if-gtz v4, :cond_0

    cmp-long v4, v2, v0

    if-nez v4, :cond_1

    invoke-virtual {p0}, Lorg/threeten/bp/chrono/ChronoZonedDateTime;->toLocalTime()Lorg/threeten/bp/LocalTime;

    move-result-object v4

    invoke-virtual {v4}, Lorg/threeten/bp/LocalTime;->getNano()I

    move-result v4

    invoke-virtual {p1}, Lorg/threeten/bp/chrono/ChronoZonedDateTime;->toLocalTime()Lorg/threeten/bp/LocalTime;

    move-result-object v5

    invoke-virtual {v5}, Lorg/threeten/bp/LocalTime;->getNano()I

    move-result v5

    if-le v4, v5, :cond_1

    :cond_0
    const/4 v4, 0x1

    :goto_0
    return v4

    :cond_1
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public isBefore(Lorg/threeten/bp/chrono/ChronoZonedDateTime;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/threeten/bp/chrono/ChronoZonedDateTime",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 494
    .local p0, "this":Lorg/threeten/bp/chrono/ChronoZonedDateTime;, "Lorg/threeten/bp/chrono/ChronoZonedDateTime<TD;>;"
    .local p1, "other":Lorg/threeten/bp/chrono/ChronoZonedDateTime;, "Lorg/threeten/bp/chrono/ChronoZonedDateTime<*>;"
    invoke-virtual {p0}, Lorg/threeten/bp/chrono/ChronoZonedDateTime;->toEpochSecond()J

    move-result-wide v2

    .line 495
    .local v2, "thisEpochSec":J
    invoke-virtual {p1}, Lorg/threeten/bp/chrono/ChronoZonedDateTime;->toEpochSecond()J

    move-result-wide v0

    .line 496
    .local v0, "otherEpochSec":J
    cmp-long v4, v2, v0

    if-ltz v4, :cond_0

    cmp-long v4, v2, v0

    if-nez v4, :cond_1

    invoke-virtual {p0}, Lorg/threeten/bp/chrono/ChronoZonedDateTime;->toLocalTime()Lorg/threeten/bp/LocalTime;

    move-result-object v4

    invoke-virtual {v4}, Lorg/threeten/bp/LocalTime;->getNano()I

    move-result v4

    invoke-virtual {p1}, Lorg/threeten/bp/chrono/ChronoZonedDateTime;->toLocalTime()Lorg/threeten/bp/LocalTime;

    move-result-object v5

    invoke-virtual {v5}, Lorg/threeten/bp/LocalTime;->getNano()I

    move-result v5

    if-ge v4, v5, :cond_1

    :cond_0
    const/4 v4, 0x1

    :goto_0
    return v4

    :cond_1
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public isEqual(Lorg/threeten/bp/chrono/ChronoZonedDateTime;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/threeten/bp/chrono/ChronoZonedDateTime",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 511
    .local p0, "this":Lorg/threeten/bp/chrono/ChronoZonedDateTime;, "Lorg/threeten/bp/chrono/ChronoZonedDateTime<TD;>;"
    .local p1, "other":Lorg/threeten/bp/chrono/ChronoZonedDateTime;, "Lorg/threeten/bp/chrono/ChronoZonedDateTime<*>;"
    invoke-virtual {p0}, Lorg/threeten/bp/chrono/ChronoZonedDateTime;->toEpochSecond()J

    move-result-wide v0

    invoke-virtual {p1}, Lorg/threeten/bp/chrono/ChronoZonedDateTime;->toEpochSecond()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/threeten/bp/chrono/ChronoZonedDateTime;->toLocalTime()Lorg/threeten/bp/LocalTime;

    move-result-object v0

    invoke-virtual {v0}, Lorg/threeten/bp/LocalTime;->getNano()I

    move-result v0

    invoke-virtual {p1}, Lorg/threeten/bp/chrono/ChronoZonedDateTime;->toLocalTime()Lorg/threeten/bp/LocalTime;

    move-result-object v1

    invoke-virtual {v1}, Lorg/threeten/bp/LocalTime;->getNano()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public minus(JLorg/threeten/bp/temporal/TemporalUnit;)Lorg/threeten/bp/chrono/ChronoZonedDateTime;
    .locals 3
    .param p1, "amountToSubtract"    # J
    .param p3, "unit"    # Lorg/threeten/bp/temporal/TemporalUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lorg/threeten/bp/temporal/TemporalUnit;",
            ")",
            "Lorg/threeten/bp/chrono/ChronoZonedDateTime",
            "<TD;>;"
        }
    .end annotation

    .prologue
    .line 365
    .local p0, "this":Lorg/threeten/bp/chrono/ChronoZonedDateTime;, "Lorg/threeten/bp/chrono/ChronoZonedDateTime<TD;>;"
    invoke-virtual {p0}, Lorg/threeten/bp/chrono/ChronoZonedDateTime;->toLocalDate()Lorg/threeten/bp/chrono/ChronoLocalDate;

    move-result-object v0

    invoke-virtual {v0}, Lorg/threeten/bp/chrono/ChronoLocalDate;->getChronology()Lorg/threeten/bp/chrono/Chronology;

    move-result-object v0

    invoke-super {p0, p1, p2, p3}, Lorg/threeten/bp/jdk8/DefaultInterfaceTemporal;->minus(JLorg/threeten/bp/temporal/TemporalUnit;)Lorg/threeten/bp/temporal/Temporal;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/threeten/bp/chrono/Chronology;->ensureChronoZonedDateTime(Lorg/threeten/bp/temporal/Temporal;)Lorg/threeten/bp/chrono/ChronoZonedDateTimeImpl;

    move-result-object v0

    return-object v0
.end method

.method public minus(Lorg/threeten/bp/temporal/TemporalAmount;)Lorg/threeten/bp/chrono/ChronoZonedDateTime;
    .locals 2
    .param p1, "amount"    # Lorg/threeten/bp/temporal/TemporalAmount;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/threeten/bp/temporal/TemporalAmount;",
            ")",
            "Lorg/threeten/bp/chrono/ChronoZonedDateTime",
            "<TD;>;"
        }
    .end annotation

    .prologue
    .line 360
    .local p0, "this":Lorg/threeten/bp/chrono/ChronoZonedDateTime;, "Lorg/threeten/bp/chrono/ChronoZonedDateTime<TD;>;"
    invoke-virtual {p0}, Lorg/threeten/bp/chrono/ChronoZonedDateTime;->toLocalDate()Lorg/threeten/bp/chrono/ChronoLocalDate;

    move-result-object v0

    invoke-virtual {v0}, Lorg/threeten/bp/chrono/ChronoLocalDate;->getChronology()Lorg/threeten/bp/chrono/Chronology;

    move-result-object v0

    invoke-super {p0, p1}, Lorg/threeten/bp/jdk8/DefaultInterfaceTemporal;->minus(Lorg/threeten/bp/temporal/TemporalAmount;)Lorg/threeten/bp/temporal/Temporal;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/threeten/bp/chrono/Chronology;->ensureChronoZonedDateTime(Lorg/threeten/bp/temporal/Temporal;)Lorg/threeten/bp/chrono/ChronoZonedDateTimeImpl;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic minus(JLorg/threeten/bp/temporal/TemporalUnit;)Lorg/threeten/bp/temporal/Temporal;
    .locals 1
    .param p1, "x0"    # J
    .param p3, "x1"    # Lorg/threeten/bp/temporal/TemporalUnit;

    .prologue
    .line 94
    .local p0, "this":Lorg/threeten/bp/chrono/ChronoZonedDateTime;, "Lorg/threeten/bp/chrono/ChronoZonedDateTime<TD;>;"
    invoke-virtual {p0, p1, p2, p3}, Lorg/threeten/bp/chrono/ChronoZonedDateTime;->minus(JLorg/threeten/bp/temporal/TemporalUnit;)Lorg/threeten/bp/chrono/ChronoZonedDateTime;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic minus(Lorg/threeten/bp/temporal/TemporalAmount;)Lorg/threeten/bp/temporal/Temporal;
    .locals 1
    .param p1, "x0"    # Lorg/threeten/bp/temporal/TemporalAmount;

    .prologue
    .line 94
    .local p0, "this":Lorg/threeten/bp/chrono/ChronoZonedDateTime;, "Lorg/threeten/bp/chrono/ChronoZonedDateTime<TD;>;"
    invoke-virtual {p0, p1}, Lorg/threeten/bp/chrono/ChronoZonedDateTime;->minus(Lorg/threeten/bp/temporal/TemporalAmount;)Lorg/threeten/bp/chrono/ChronoZonedDateTime;

    move-result-object v0

    return-object v0
.end method

.method public abstract plus(JLorg/threeten/bp/temporal/TemporalUnit;)Lorg/threeten/bp/chrono/ChronoZonedDateTime;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lorg/threeten/bp/temporal/TemporalUnit;",
            ")",
            "Lorg/threeten/bp/chrono/ChronoZonedDateTime",
            "<TD;>;"
        }
    .end annotation
.end method

.method public plus(Lorg/threeten/bp/temporal/TemporalAmount;)Lorg/threeten/bp/chrono/ChronoZonedDateTime;
    .locals 2
    .param p1, "amount"    # Lorg/threeten/bp/temporal/TemporalAmount;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/threeten/bp/temporal/TemporalAmount;",
            ")",
            "Lorg/threeten/bp/chrono/ChronoZonedDateTime",
            "<TD;>;"
        }
    .end annotation

    .prologue
    .line 352
    .local p0, "this":Lorg/threeten/bp/chrono/ChronoZonedDateTime;, "Lorg/threeten/bp/chrono/ChronoZonedDateTime<TD;>;"
    invoke-virtual {p0}, Lorg/threeten/bp/chrono/ChronoZonedDateTime;->toLocalDate()Lorg/threeten/bp/chrono/ChronoLocalDate;

    move-result-object v0

    invoke-virtual {v0}, Lorg/threeten/bp/chrono/ChronoLocalDate;->getChronology()Lorg/threeten/bp/chrono/Chronology;

    move-result-object v0

    invoke-super {p0, p1}, Lorg/threeten/bp/jdk8/DefaultInterfaceTemporal;->plus(Lorg/threeten/bp/temporal/TemporalAmount;)Lorg/threeten/bp/temporal/Temporal;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/threeten/bp/chrono/Chronology;->ensureChronoZonedDateTime(Lorg/threeten/bp/temporal/Temporal;)Lorg/threeten/bp/chrono/ChronoZonedDateTimeImpl;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic plus(JLorg/threeten/bp/temporal/TemporalUnit;)Lorg/threeten/bp/temporal/Temporal;
    .locals 1
    .param p1, "x0"    # J
    .param p3, "x1"    # Lorg/threeten/bp/temporal/TemporalUnit;

    .prologue
    .line 94
    .local p0, "this":Lorg/threeten/bp/chrono/ChronoZonedDateTime;, "Lorg/threeten/bp/chrono/ChronoZonedDateTime<TD;>;"
    invoke-virtual {p0, p1, p2, p3}, Lorg/threeten/bp/chrono/ChronoZonedDateTime;->plus(JLorg/threeten/bp/temporal/TemporalUnit;)Lorg/threeten/bp/chrono/ChronoZonedDateTime;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic plus(Lorg/threeten/bp/temporal/TemporalAmount;)Lorg/threeten/bp/temporal/Temporal;
    .locals 1
    .param p1, "x0"    # Lorg/threeten/bp/temporal/TemporalAmount;

    .prologue
    .line 94
    .local p0, "this":Lorg/threeten/bp/chrono/ChronoZonedDateTime;, "Lorg/threeten/bp/chrono/ChronoZonedDateTime<TD;>;"
    invoke-virtual {p0, p1}, Lorg/threeten/bp/chrono/ChronoZonedDateTime;->plus(Lorg/threeten/bp/temporal/TemporalAmount;)Lorg/threeten/bp/chrono/ChronoZonedDateTime;

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
    .line 372
    .local p0, "this":Lorg/threeten/bp/chrono/ChronoZonedDateTime;, "Lorg/threeten/bp/chrono/ChronoZonedDateTime<TD;>;"
    .local p1, "query":Lorg/threeten/bp/temporal/TemporalQuery;, "Lorg/threeten/bp/temporal/TemporalQuery<TR;>;"
    invoke-static {}, Lorg/threeten/bp/temporal/TemporalQueries;->zoneId()Lorg/threeten/bp/temporal/TemporalQuery;

    move-result-object v0

    if-eq p1, v0, :cond_0

    invoke-static {}, Lorg/threeten/bp/temporal/TemporalQueries;->zone()Lorg/threeten/bp/temporal/TemporalQuery;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 373
    :cond_0
    invoke-virtual {p0}, Lorg/threeten/bp/chrono/ChronoZonedDateTime;->getZone()Lorg/threeten/bp/ZoneId;

    move-result-object v0

    .line 385
    :goto_0
    return-object v0

    .line 374
    :cond_1
    invoke-static {}, Lorg/threeten/bp/temporal/TemporalQueries;->chronology()Lorg/threeten/bp/temporal/TemporalQuery;

    move-result-object v0

    if-ne p1, v0, :cond_2

    .line 375
    invoke-virtual {p0}, Lorg/threeten/bp/chrono/ChronoZonedDateTime;->toLocalDate()Lorg/threeten/bp/chrono/ChronoLocalDate;

    move-result-object v0

    invoke-virtual {v0}, Lorg/threeten/bp/chrono/ChronoLocalDate;->getChronology()Lorg/threeten/bp/chrono/Chronology;

    move-result-object v0

    goto :goto_0

    .line 376
    :cond_2
    invoke-static {}, Lorg/threeten/bp/temporal/TemporalQueries;->precision()Lorg/threeten/bp/temporal/TemporalQuery;

    move-result-object v0

    if-ne p1, v0, :cond_3

    .line 377
    sget-object v0, Lorg/threeten/bp/temporal/ChronoUnit;->NANOS:Lorg/threeten/bp/temporal/ChronoUnit;

    goto :goto_0

    .line 378
    :cond_3
    invoke-static {}, Lorg/threeten/bp/temporal/TemporalQueries;->offset()Lorg/threeten/bp/temporal/TemporalQuery;

    move-result-object v0

    if-ne p1, v0, :cond_4

    .line 379
    invoke-virtual {p0}, Lorg/threeten/bp/chrono/ChronoZonedDateTime;->getOffset()Lorg/threeten/bp/ZoneOffset;

    move-result-object v0

    goto :goto_0

    .line 380
    :cond_4
    invoke-static {}, Lorg/threeten/bp/temporal/TemporalQueries;->localDate()Lorg/threeten/bp/temporal/TemporalQuery;

    move-result-object v0

    if-ne p1, v0, :cond_5

    .line 381
    invoke-virtual {p0}, Lorg/threeten/bp/chrono/ChronoZonedDateTime;->toLocalDate()Lorg/threeten/bp/chrono/ChronoLocalDate;

    move-result-object v0

    invoke-virtual {v0}, Lorg/threeten/bp/chrono/ChronoLocalDate;->toEpochDay()J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/threeten/bp/LocalDate;->ofEpochDay(J)Lorg/threeten/bp/LocalDate;

    move-result-object v0

    goto :goto_0

    .line 382
    :cond_5
    invoke-static {}, Lorg/threeten/bp/temporal/TemporalQueries;->localTime()Lorg/threeten/bp/temporal/TemporalQuery;

    move-result-object v0

    if-ne p1, v0, :cond_6

    .line 383
    invoke-virtual {p0}, Lorg/threeten/bp/chrono/ChronoZonedDateTime;->toLocalTime()Lorg/threeten/bp/LocalTime;

    move-result-object v0

    goto :goto_0

    .line 385
    :cond_6
    invoke-super {p0, p1}, Lorg/threeten/bp/jdk8/DefaultInterfaceTemporal;->query(Lorg/threeten/bp/temporal/TemporalQuery;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public range(Lorg/threeten/bp/temporal/TemporalField;)Lorg/threeten/bp/temporal/ValueRange;
    .locals 1
    .param p1, "field"    # Lorg/threeten/bp/temporal/TemporalField;

    .prologue
    .line 164
    .local p0, "this":Lorg/threeten/bp/chrono/ChronoZonedDateTime;, "Lorg/threeten/bp/chrono/ChronoZonedDateTime<TD;>;"
    instance-of v0, p1, Lorg/threeten/bp/temporal/ChronoField;

    if-eqz v0, :cond_2

    .line 165
    sget-object v0, Lorg/threeten/bp/temporal/ChronoField;->INSTANT_SECONDS:Lorg/threeten/bp/temporal/ChronoField;

    if-eq p1, v0, :cond_0

    sget-object v0, Lorg/threeten/bp/temporal/ChronoField;->OFFSET_SECONDS:Lorg/threeten/bp/temporal/ChronoField;

    if-ne p1, v0, :cond_1

    .line 166
    :cond_0
    invoke-interface {p1}, Lorg/threeten/bp/temporal/TemporalField;->range()Lorg/threeten/bp/temporal/ValueRange;

    move-result-object v0

    .line 170
    :goto_0
    return-object v0

    .line 168
    :cond_1
    invoke-virtual {p0}, Lorg/threeten/bp/chrono/ChronoZonedDateTime;->toLocalDateTime()Lorg/threeten/bp/chrono/ChronoLocalDateTime;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/threeten/bp/chrono/ChronoLocalDateTime;->range(Lorg/threeten/bp/temporal/TemporalField;)Lorg/threeten/bp/temporal/ValueRange;

    move-result-object v0

    goto :goto_0

    .line 170
    :cond_2
    invoke-interface {p1, p0}, Lorg/threeten/bp/temporal/TemporalField;->rangeRefinedBy(Lorg/threeten/bp/temporal/TemporalAccessor;)Lorg/threeten/bp/temporal/ValueRange;

    move-result-object v0

    goto :goto_0
.end method

.method public toEpochSecond()J
    .locals 8

    .prologue
    .line 427
    .local p0, "this":Lorg/threeten/bp/chrono/ChronoZonedDateTime;, "Lorg/threeten/bp/chrono/ChronoZonedDateTime<TD;>;"
    invoke-virtual {p0}, Lorg/threeten/bp/chrono/ChronoZonedDateTime;->toLocalDate()Lorg/threeten/bp/chrono/ChronoLocalDate;

    move-result-object v4

    invoke-virtual {v4}, Lorg/threeten/bp/chrono/ChronoLocalDate;->toEpochDay()J

    move-result-wide v0

    .line 428
    .local v0, "epochDay":J
    const-wide/32 v4, 0x15180

    mul-long/2addr v4, v0

    invoke-virtual {p0}, Lorg/threeten/bp/chrono/ChronoZonedDateTime;->toLocalTime()Lorg/threeten/bp/LocalTime;

    move-result-object v6

    invoke-virtual {v6}, Lorg/threeten/bp/LocalTime;->toSecondOfDay()I

    move-result v6

    int-to-long v6, v6

    add-long v2, v4, v6

    .line 429
    .local v2, "secs":J
    invoke-virtual {p0}, Lorg/threeten/bp/chrono/ChronoZonedDateTime;->getOffset()Lorg/threeten/bp/ZoneOffset;

    move-result-object v4

    invoke-virtual {v4}, Lorg/threeten/bp/ZoneOffset;->getTotalSeconds()I

    move-result v4

    int-to-long v4, v4

    sub-long/2addr v2, v4

    .line 430
    return-wide v2
.end method

.method public toInstant()Lorg/threeten/bp/Instant;
    .locals 4

    .prologue
    .line 412
    .local p0, "this":Lorg/threeten/bp/chrono/ChronoZonedDateTime;, "Lorg/threeten/bp/chrono/ChronoZonedDateTime<TD;>;"
    invoke-virtual {p0}, Lorg/threeten/bp/chrono/ChronoZonedDateTime;->toEpochSecond()J

    move-result-wide v0

    invoke-virtual {p0}, Lorg/threeten/bp/chrono/ChronoZonedDateTime;->toLocalTime()Lorg/threeten/bp/LocalTime;

    move-result-object v2

    invoke-virtual {v2}, Lorg/threeten/bp/LocalTime;->getNano()I

    move-result v2

    int-to-long v2, v2

    invoke-static {v0, v1, v2, v3}, Lorg/threeten/bp/Instant;->ofEpochSecond(JJ)Lorg/threeten/bp/Instant;

    move-result-object v0

    return-object v0
.end method

.method public toLocalDate()Lorg/threeten/bp/chrono/ChronoLocalDate;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TD;"
        }
    .end annotation

    .prologue
    .line 207
    .local p0, "this":Lorg/threeten/bp/chrono/ChronoZonedDateTime;, "Lorg/threeten/bp/chrono/ChronoZonedDateTime<TD;>;"
    invoke-virtual {p0}, Lorg/threeten/bp/chrono/ChronoZonedDateTime;->toLocalDateTime()Lorg/threeten/bp/chrono/ChronoLocalDateTime;

    move-result-object v0

    invoke-virtual {v0}, Lorg/threeten/bp/chrono/ChronoLocalDateTime;->toLocalDate()Lorg/threeten/bp/chrono/ChronoLocalDate;

    move-result-object v0

    return-object v0
.end method

.method public abstract toLocalDateTime()Lorg/threeten/bp/chrono/ChronoLocalDateTime;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/threeten/bp/chrono/ChronoLocalDateTime",
            "<TD;>;"
        }
    .end annotation
.end method

.method public toLocalTime()Lorg/threeten/bp/LocalTime;
    .locals 1

    .prologue
    .line 219
    .local p0, "this":Lorg/threeten/bp/chrono/ChronoZonedDateTime;, "Lorg/threeten/bp/chrono/ChronoZonedDateTime<TD;>;"
    invoke-virtual {p0}, Lorg/threeten/bp/chrono/ChronoZonedDateTime;->toLocalDateTime()Lorg/threeten/bp/chrono/ChronoLocalDateTime;

    move-result-object v0

    invoke-virtual {v0}, Lorg/threeten/bp/chrono/ChronoLocalDateTime;->toLocalTime()Lorg/threeten/bp/LocalTime;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 557
    .local p0, "this":Lorg/threeten/bp/chrono/ChronoZonedDateTime;, "Lorg/threeten/bp/chrono/ChronoZonedDateTime<TD;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/threeten/bp/chrono/ChronoZonedDateTime;->toLocalDateTime()Lorg/threeten/bp/chrono/ChronoLocalDateTime;

    move-result-object v2

    invoke-virtual {v2}, Lorg/threeten/bp/chrono/ChronoLocalDateTime;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/threeten/bp/chrono/ChronoZonedDateTime;->getOffset()Lorg/threeten/bp/ZoneOffset;

    move-result-object v2

    invoke-virtual {v2}, Lorg/threeten/bp/ZoneOffset;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 558
    .local v0, "str":Ljava/lang/String;
    invoke-virtual {p0}, Lorg/threeten/bp/chrono/ChronoZonedDateTime;->getOffset()Lorg/threeten/bp/ZoneOffset;

    move-result-object v1

    invoke-virtual {p0}, Lorg/threeten/bp/chrono/ChronoZonedDateTime;->getZone()Lorg/threeten/bp/ZoneId;

    move-result-object v2

    if-eq v1, v2, :cond_0

    .line 559
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x5b

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/threeten/bp/chrono/ChronoZonedDateTime;->getZone()Lorg/threeten/bp/ZoneId;

    move-result-object v2

    invoke-virtual {v2}, Lorg/threeten/bp/ZoneId;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x5d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 561
    :cond_0
    return-object v0
.end method

.method public with(Lorg/threeten/bp/temporal/TemporalAdjuster;)Lorg/threeten/bp/chrono/ChronoZonedDateTime;
    .locals 2
    .param p1, "adjuster"    # Lorg/threeten/bp/temporal/TemporalAdjuster;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/threeten/bp/temporal/TemporalAdjuster;",
            ")",
            "Lorg/threeten/bp/chrono/ChronoZonedDateTime",
            "<TD;>;"
        }
    .end annotation

    .prologue
    .line 344
    .local p0, "this":Lorg/threeten/bp/chrono/ChronoZonedDateTime;, "Lorg/threeten/bp/chrono/ChronoZonedDateTime<TD;>;"
    invoke-virtual {p0}, Lorg/threeten/bp/chrono/ChronoZonedDateTime;->toLocalDate()Lorg/threeten/bp/chrono/ChronoLocalDate;

    move-result-object v0

    invoke-virtual {v0}, Lorg/threeten/bp/chrono/ChronoLocalDate;->getChronology()Lorg/threeten/bp/chrono/Chronology;

    move-result-object v0

    invoke-super {p0, p1}, Lorg/threeten/bp/jdk8/DefaultInterfaceTemporal;->with(Lorg/threeten/bp/temporal/TemporalAdjuster;)Lorg/threeten/bp/temporal/Temporal;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/threeten/bp/chrono/Chronology;->ensureChronoZonedDateTime(Lorg/threeten/bp/temporal/Temporal;)Lorg/threeten/bp/chrono/ChronoZonedDateTimeImpl;

    move-result-object v0

    return-object v0
.end method

.method public abstract with(Lorg/threeten/bp/temporal/TemporalField;J)Lorg/threeten/bp/chrono/ChronoZonedDateTime;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/threeten/bp/temporal/TemporalField;",
            "J)",
            "Lorg/threeten/bp/chrono/ChronoZonedDateTime",
            "<TD;>;"
        }
    .end annotation
.end method

.method public bridge synthetic with(Lorg/threeten/bp/temporal/TemporalAdjuster;)Lorg/threeten/bp/temporal/Temporal;
    .locals 1
    .param p1, "x0"    # Lorg/threeten/bp/temporal/TemporalAdjuster;

    .prologue
    .line 94
    .local p0, "this":Lorg/threeten/bp/chrono/ChronoZonedDateTime;, "Lorg/threeten/bp/chrono/ChronoZonedDateTime<TD;>;"
    invoke-virtual {p0, p1}, Lorg/threeten/bp/chrono/ChronoZonedDateTime;->with(Lorg/threeten/bp/temporal/TemporalAdjuster;)Lorg/threeten/bp/chrono/ChronoZonedDateTime;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic with(Lorg/threeten/bp/temporal/TemporalField;J)Lorg/threeten/bp/temporal/Temporal;
    .locals 2
    .param p1, "x0"    # Lorg/threeten/bp/temporal/TemporalField;
    .param p2, "x1"    # J

    .prologue
    .line 94
    .local p0, "this":Lorg/threeten/bp/chrono/ChronoZonedDateTime;, "Lorg/threeten/bp/chrono/ChronoZonedDateTime<TD;>;"
    invoke-virtual {p0, p1, p2, p3}, Lorg/threeten/bp/chrono/ChronoZonedDateTime;->with(Lorg/threeten/bp/temporal/TemporalField;J)Lorg/threeten/bp/chrono/ChronoZonedDateTime;

    move-result-object v0

    return-object v0
.end method

.method public abstract withEarlierOffsetAtOverlap()Lorg/threeten/bp/chrono/ChronoZonedDateTime;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/threeten/bp/chrono/ChronoZonedDateTime",
            "<TD;>;"
        }
    .end annotation
.end method

.method public abstract withLaterOffsetAtOverlap()Lorg/threeten/bp/chrono/ChronoZonedDateTime;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/threeten/bp/chrono/ChronoZonedDateTime",
            "<TD;>;"
        }
    .end annotation
.end method

.method public abstract withZoneSameInstant(Lorg/threeten/bp/ZoneId;)Lorg/threeten/bp/chrono/ChronoZonedDateTime;
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

.method public abstract withZoneSameLocal(Lorg/threeten/bp/ZoneId;)Lorg/threeten/bp/chrono/ChronoZonedDateTime;
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
