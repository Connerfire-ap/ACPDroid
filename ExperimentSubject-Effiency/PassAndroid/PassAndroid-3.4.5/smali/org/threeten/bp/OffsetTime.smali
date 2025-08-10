.class public final Lorg/threeten/bp/OffsetTime;
.super Lorg/threeten/bp/jdk8/DefaultInterfaceTemporalAccessor;
.source "OffsetTime.java"

# interfaces
.implements Lorg/threeten/bp/temporal/Temporal;
.implements Lorg/threeten/bp/temporal/TemporalAdjuster;
.implements Ljava/lang/Comparable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/threeten/bp/OffsetTime$2;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/threeten/bp/jdk8/DefaultInterfaceTemporalAccessor;",
        "Lorg/threeten/bp/temporal/Temporal;",
        "Lorg/threeten/bp/temporal/TemporalAdjuster;",
        "Ljava/lang/Comparable",
        "<",
        "Lorg/threeten/bp/OffsetTime;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field public static final FROM:Lorg/threeten/bp/temporal/TemporalQuery;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/threeten/bp/temporal/TemporalQuery",
            "<",
            "Lorg/threeten/bp/OffsetTime;",
            ">;"
        }
    .end annotation
.end field

.field public static final MAX:Lorg/threeten/bp/OffsetTime;

.field public static final MIN:Lorg/threeten/bp/OffsetTime;

.field private static final serialVersionUID:J = 0x64d0affdfec1386cL


# instance fields
.field private final offset:Lorg/threeten/bp/ZoneOffset;

.field private final time:Lorg/threeten/bp/LocalTime;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 92
    sget-object v0, Lorg/threeten/bp/LocalTime;->MIN:Lorg/threeten/bp/LocalTime;

    sget-object v1, Lorg/threeten/bp/ZoneOffset;->MAX:Lorg/threeten/bp/ZoneOffset;

    invoke-virtual {v0, v1}, Lorg/threeten/bp/LocalTime;->atOffset(Lorg/threeten/bp/ZoneOffset;)Lorg/threeten/bp/OffsetTime;

    move-result-object v0

    sput-object v0, Lorg/threeten/bp/OffsetTime;->MIN:Lorg/threeten/bp/OffsetTime;

    .line 100
    sget-object v0, Lorg/threeten/bp/LocalTime;->MAX:Lorg/threeten/bp/LocalTime;

    sget-object v1, Lorg/threeten/bp/ZoneOffset;->MIN:Lorg/threeten/bp/ZoneOffset;

    invoke-virtual {v0, v1}, Lorg/threeten/bp/LocalTime;->atOffset(Lorg/threeten/bp/ZoneOffset;)Lorg/threeten/bp/OffsetTime;

    move-result-object v0

    sput-object v0, Lorg/threeten/bp/OffsetTime;->MAX:Lorg/threeten/bp/OffsetTime;

    .line 104
    new-instance v0, Lorg/threeten/bp/OffsetTime$1;

    invoke-direct {v0}, Lorg/threeten/bp/OffsetTime$1;-><init>()V

    sput-object v0, Lorg/threeten/bp/OffsetTime;->FROM:Lorg/threeten/bp/temporal/TemporalQuery;

    return-void
.end method

.method private constructor <init>(Lorg/threeten/bp/LocalTime;Lorg/threeten/bp/ZoneOffset;)V
    .locals 1
    .param p1, "time"    # Lorg/threeten/bp/LocalTime;
    .param p2, "offset"    # Lorg/threeten/bp/ZoneOffset;

    .prologue
    .line 309
    invoke-direct {p0}, Lorg/threeten/bp/jdk8/DefaultInterfaceTemporalAccessor;-><init>()V

    .line 310
    const-string v0, "time"

    invoke-static {p1, v0}, Lorg/threeten/bp/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/threeten/bp/LocalTime;

    iput-object v0, p0, Lorg/threeten/bp/OffsetTime;->time:Lorg/threeten/bp/LocalTime;

    .line 311
    const-string v0, "offset"

    invoke-static {p2, v0}, Lorg/threeten/bp/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/threeten/bp/ZoneOffset;

    iput-object v0, p0, Lorg/threeten/bp/OffsetTime;->offset:Lorg/threeten/bp/ZoneOffset;

    .line 312
    return-void
.end method

.method public static from(Lorg/threeten/bp/temporal/TemporalAccessor;)Lorg/threeten/bp/OffsetTime;
    .locals 6
    .param p0, "temporal"    # Lorg/threeten/bp/temporal/TemporalAccessor;

    .prologue
    .line 259
    instance-of v3, p0, Lorg/threeten/bp/OffsetTime;

    if-eqz v3, :cond_0

    .line 260
    check-cast p0, Lorg/threeten/bp/OffsetTime;

    .line 265
    .end local p0    # "temporal":Lorg/threeten/bp/temporal/TemporalAccessor;
    .local v1, "offset":Lorg/threeten/bp/ZoneOffset;
    .local v2, "time":Lorg/threeten/bp/LocalTime;
    :goto_0
    return-object p0

    .line 263
    .end local v1    # "offset":Lorg/threeten/bp/ZoneOffset;
    .end local v2    # "time":Lorg/threeten/bp/LocalTime;
    .restart local p0    # "temporal":Lorg/threeten/bp/temporal/TemporalAccessor;
    :cond_0
    :try_start_0
    invoke-static {p0}, Lorg/threeten/bp/LocalTime;->from(Lorg/threeten/bp/temporal/TemporalAccessor;)Lorg/threeten/bp/LocalTime;

    move-result-object v2

    .line 264
    .restart local v2    # "time":Lorg/threeten/bp/LocalTime;
    invoke-static {p0}, Lorg/threeten/bp/ZoneOffset;->from(Lorg/threeten/bp/temporal/TemporalAccessor;)Lorg/threeten/bp/ZoneOffset;

    move-result-object v1

    .line 265
    .restart local v1    # "offset":Lorg/threeten/bp/ZoneOffset;
    new-instance v3, Lorg/threeten/bp/OffsetTime;

    invoke-direct {v3, v2, v1}, Lorg/threeten/bp/OffsetTime;-><init>(Lorg/threeten/bp/LocalTime;Lorg/threeten/bp/ZoneOffset;)V
    :try_end_0
    .catch Lorg/threeten/bp/DateTimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-object p0, v3

    goto :goto_0

    .line 266
    .end local v1    # "offset":Lorg/threeten/bp/ZoneOffset;
    .end local v2    # "time":Lorg/threeten/bp/LocalTime;
    :catch_0
    move-exception v0

    .line 267
    .local v0, "ex":Lorg/threeten/bp/DateTimeException;
    new-instance v3, Lorg/threeten/bp/DateTimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to obtain OffsetTime from TemporalAccessor: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", type "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/threeten/bp/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public static now()Lorg/threeten/bp/OffsetTime;
    .locals 1

    .prologue
    .line 139
    invoke-static {}, Lorg/threeten/bp/Clock;->systemDefaultZone()Lorg/threeten/bp/Clock;

    move-result-object v0

    invoke-static {v0}, Lorg/threeten/bp/OffsetTime;->now(Lorg/threeten/bp/Clock;)Lorg/threeten/bp/OffsetTime;

    move-result-object v0

    return-object v0
.end method

.method public static now(Lorg/threeten/bp/Clock;)Lorg/threeten/bp/OffsetTime;
    .locals 2
    .param p0, "clock"    # Lorg/threeten/bp/Clock;

    .prologue
    .line 172
    const-string v1, "clock"

    invoke-static {p0, v1}, Lorg/threeten/bp/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 173
    invoke-virtual {p0}, Lorg/threeten/bp/Clock;->instant()Lorg/threeten/bp/Instant;

    move-result-object v0

    .line 174
    .local v0, "now":Lorg/threeten/bp/Instant;
    invoke-virtual {p0}, Lorg/threeten/bp/Clock;->getZone()Lorg/threeten/bp/ZoneId;

    move-result-object v1

    invoke-virtual {v1}, Lorg/threeten/bp/ZoneId;->getRules()Lorg/threeten/bp/zone/ZoneRules;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/threeten/bp/zone/ZoneRules;->getOffset(Lorg/threeten/bp/Instant;)Lorg/threeten/bp/ZoneOffset;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/threeten/bp/OffsetTime;->ofInstant(Lorg/threeten/bp/Instant;Lorg/threeten/bp/ZoneId;)Lorg/threeten/bp/OffsetTime;

    move-result-object v1

    return-object v1
.end method

.method public static now(Lorg/threeten/bp/ZoneId;)Lorg/threeten/bp/OffsetTime;
    .locals 1
    .param p0, "zone"    # Lorg/threeten/bp/ZoneId;

    .prologue
    .line 156
    invoke-static {p0}, Lorg/threeten/bp/Clock;->system(Lorg/threeten/bp/ZoneId;)Lorg/threeten/bp/Clock;

    move-result-object v0

    invoke-static {v0}, Lorg/threeten/bp/OffsetTime;->now(Lorg/threeten/bp/Clock;)Lorg/threeten/bp/OffsetTime;

    move-result-object v0

    return-object v0
.end method

.method public static of(IIIILorg/threeten/bp/ZoneOffset;)Lorg/threeten/bp/OffsetTime;
    .locals 2
    .param p0, "hour"    # I
    .param p1, "minute"    # I
    .param p2, "second"    # I
    .param p3, "nanoOfSecond"    # I
    .param p4, "offset"    # Lorg/threeten/bp/ZoneOffset;

    .prologue
    .line 209
    new-instance v0, Lorg/threeten/bp/OffsetTime;

    invoke-static {p0, p1, p2, p3}, Lorg/threeten/bp/LocalTime;->of(IIII)Lorg/threeten/bp/LocalTime;

    move-result-object v1

    invoke-direct {v0, v1, p4}, Lorg/threeten/bp/OffsetTime;-><init>(Lorg/threeten/bp/LocalTime;Lorg/threeten/bp/ZoneOffset;)V

    return-object v0
.end method

.method public static of(Lorg/threeten/bp/LocalTime;Lorg/threeten/bp/ZoneOffset;)Lorg/threeten/bp/OffsetTime;
    .locals 1
    .param p0, "time"    # Lorg/threeten/bp/LocalTime;
    .param p1, "offset"    # Lorg/threeten/bp/ZoneOffset;

    .prologue
    .line 186
    new-instance v0, Lorg/threeten/bp/OffsetTime;

    invoke-direct {v0, p0, p1}, Lorg/threeten/bp/OffsetTime;-><init>(Lorg/threeten/bp/LocalTime;Lorg/threeten/bp/ZoneOffset;)V

    return-object v0
.end method

.method public static ofInstant(Lorg/threeten/bp/Instant;Lorg/threeten/bp/ZoneId;)Lorg/threeten/bp/OffsetTime;
    .locals 10
    .param p0, "instant"    # Lorg/threeten/bp/Instant;
    .param p1, "zone"    # Lorg/threeten/bp/ZoneId;

    .prologue
    const-wide/32 v8, 0x15180

    .line 229
    const-string v5, "instant"

    invoke-static {p0, v5}, Lorg/threeten/bp/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 230
    const-string v5, "zone"

    invoke-static {p1, v5}, Lorg/threeten/bp/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 231
    invoke-virtual {p1}, Lorg/threeten/bp/ZoneId;->getRules()Lorg/threeten/bp/zone/ZoneRules;

    move-result-object v1

    .line 232
    .local v1, "rules":Lorg/threeten/bp/zone/ZoneRules;
    invoke-virtual {v1, p0}, Lorg/threeten/bp/zone/ZoneRules;->getOffset(Lorg/threeten/bp/Instant;)Lorg/threeten/bp/ZoneOffset;

    move-result-object v0

    .line 233
    .local v0, "offset":Lorg/threeten/bp/ZoneOffset;
    invoke-virtual {p0}, Lorg/threeten/bp/Instant;->getEpochSecond()J

    move-result-wide v6

    rem-long v2, v6, v8

    .line 234
    .local v2, "secsOfDay":J
    invoke-virtual {v0}, Lorg/threeten/bp/ZoneOffset;->getTotalSeconds()I

    move-result v5

    int-to-long v6, v5

    add-long/2addr v6, v2

    rem-long v2, v6, v8

    .line 235
    const-wide/16 v6, 0x0

    cmp-long v5, v2, v6

    if-gez v5, :cond_0

    .line 236
    add-long/2addr v2, v8

    .line 238
    :cond_0
    invoke-virtual {p0}, Lorg/threeten/bp/Instant;->getNano()I

    move-result v5

    invoke-static {v2, v3, v5}, Lorg/threeten/bp/LocalTime;->ofSecondOfDay(JI)Lorg/threeten/bp/LocalTime;

    move-result-object v4

    .line 239
    .local v4, "time":Lorg/threeten/bp/LocalTime;
    new-instance v5, Lorg/threeten/bp/OffsetTime;

    invoke-direct {v5, v4, v0}, Lorg/threeten/bp/OffsetTime;-><init>(Lorg/threeten/bp/LocalTime;Lorg/threeten/bp/ZoneOffset;)V

    return-object v5
.end method

.method public static parse(Ljava/lang/CharSequence;)Lorg/threeten/bp/OffsetTime;
    .locals 1
    .param p0, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 284
    sget-object v0, Lorg/threeten/bp/format/DateTimeFormatter;->ISO_OFFSET_TIME:Lorg/threeten/bp/format/DateTimeFormatter;

    invoke-static {p0, v0}, Lorg/threeten/bp/OffsetTime;->parse(Ljava/lang/CharSequence;Lorg/threeten/bp/format/DateTimeFormatter;)Lorg/threeten/bp/OffsetTime;

    move-result-object v0

    return-object v0
.end method

.method public static parse(Ljava/lang/CharSequence;Lorg/threeten/bp/format/DateTimeFormatter;)Lorg/threeten/bp/OffsetTime;
    .locals 1
    .param p0, "text"    # Ljava/lang/CharSequence;
    .param p1, "formatter"    # Lorg/threeten/bp/format/DateTimeFormatter;

    .prologue
    .line 298
    const-string v0, "formatter"

    invoke-static {p1, v0}, Lorg/threeten/bp/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 299
    sget-object v0, Lorg/threeten/bp/OffsetTime;->FROM:Lorg/threeten/bp/temporal/TemporalQuery;

    invoke-virtual {p1, p0, v0}, Lorg/threeten/bp/format/DateTimeFormatter;->parse(Ljava/lang/CharSequence;Lorg/threeten/bp/temporal/TemporalQuery;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/threeten/bp/OffsetTime;

    return-object v0
.end method

.method static readExternal(Ljava/io/DataInput;)Lorg/threeten/bp/OffsetTime;
    .locals 3
    .param p0, "in"    # Ljava/io/DataInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1311
    invoke-static {p0}, Lorg/threeten/bp/LocalTime;->readExternal(Ljava/io/DataInput;)Lorg/threeten/bp/LocalTime;

    move-result-object v1

    .line 1312
    .local v1, "time":Lorg/threeten/bp/LocalTime;
    invoke-static {p0}, Lorg/threeten/bp/ZoneOffset;->readExternal(Ljava/io/DataInput;)Lorg/threeten/bp/ZoneOffset;

    move-result-object v0

    .line 1313
    .local v0, "offset":Lorg/threeten/bp/ZoneOffset;
    invoke-static {v1, v0}, Lorg/threeten/bp/OffsetTime;->of(Lorg/threeten/bp/LocalTime;Lorg/threeten/bp/ZoneOffset;)Lorg/threeten/bp/OffsetTime;

    move-result-object v2

    return-object v2
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .prologue
    .line 1302
    new-instance v0, Ljava/io/InvalidObjectException;

    const-string v1, "Deserialization via serialization delegate"

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private toEpochNano()J
    .locals 8

    .prologue
    .line 1127
    iget-object v4, p0, Lorg/threeten/bp/OffsetTime;->time:Lorg/threeten/bp/LocalTime;

    invoke-virtual {v4}, Lorg/threeten/bp/LocalTime;->toNanoOfDay()J

    move-result-wide v0

    .line 1128
    .local v0, "nod":J
    iget-object v4, p0, Lorg/threeten/bp/OffsetTime;->offset:Lorg/threeten/bp/ZoneOffset;

    invoke-virtual {v4}, Lorg/threeten/bp/ZoneOffset;->getTotalSeconds()I

    move-result v4

    int-to-long v4, v4

    const-wide/32 v6, 0x3b9aca00

    mul-long v2, v4, v6

    .line 1129
    .local v2, "offsetNanos":J
    sub-long v4, v0, v2

    return-wide v4
.end method

.method private with(Lorg/threeten/bp/LocalTime;Lorg/threeten/bp/ZoneOffset;)Lorg/threeten/bp/OffsetTime;
    .locals 1
    .param p1, "time"    # Lorg/threeten/bp/LocalTime;
    .param p2, "offset"    # Lorg/threeten/bp/ZoneOffset;

    .prologue
    .line 321
    iget-object v0, p0, Lorg/threeten/bp/OffsetTime;->time:Lorg/threeten/bp/LocalTime;

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lorg/threeten/bp/OffsetTime;->offset:Lorg/threeten/bp/ZoneOffset;

    invoke-virtual {v0, p2}, Lorg/threeten/bp/ZoneOffset;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 324
    .end local p0    # "this":Lorg/threeten/bp/OffsetTime;
    :goto_0
    return-object p0

    .restart local p0    # "this":Lorg/threeten/bp/OffsetTime;
    :cond_0
    new-instance p0, Lorg/threeten/bp/OffsetTime;

    .end local p0    # "this":Lorg/threeten/bp/OffsetTime;
    invoke-direct {p0, p1, p2}, Lorg/threeten/bp/OffsetTime;-><init>(Lorg/threeten/bp/LocalTime;Lorg/threeten/bp/ZoneOffset;)V

    goto :goto_0
.end method

.method private writeReplace()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 1293
    new-instance v0, Lorg/threeten/bp/Ser;

    const/16 v1, 0x42

    invoke-direct {v0, v1, p0}, Lorg/threeten/bp/Ser;-><init>(BLjava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public adjustInto(Lorg/threeten/bp/temporal/Temporal;)Lorg/threeten/bp/temporal/Temporal;
    .locals 4
    .param p1, "temporal"    # Lorg/threeten/bp/temporal/Temporal;

    .prologue
    .line 1023
    sget-object v0, Lorg/threeten/bp/temporal/ChronoField;->NANO_OF_DAY:Lorg/threeten/bp/temporal/ChronoField;

    iget-object v1, p0, Lorg/threeten/bp/OffsetTime;->time:Lorg/threeten/bp/LocalTime;

    invoke-virtual {v1}, Lorg/threeten/bp/LocalTime;->toNanoOfDay()J

    move-result-wide v2

    invoke-interface {p1, v0, v2, v3}, Lorg/threeten/bp/temporal/Temporal;->with(Lorg/threeten/bp/temporal/TemporalField;J)Lorg/threeten/bp/temporal/Temporal;

    move-result-object v0

    sget-object v1, Lorg/threeten/bp/temporal/ChronoField;->OFFSET_SECONDS:Lorg/threeten/bp/temporal/ChronoField;

    invoke-virtual {p0}, Lorg/threeten/bp/OffsetTime;->getOffset()Lorg/threeten/bp/ZoneOffset;

    move-result-object v2

    invoke-virtual {v2}, Lorg/threeten/bp/ZoneOffset;->getTotalSeconds()I

    move-result v2

    int-to-long v2, v2

    invoke-interface {v0, v1, v2, v3}, Lorg/threeten/bp/temporal/Temporal;->with(Lorg/threeten/bp/temporal/TemporalField;J)Lorg/threeten/bp/temporal/Temporal;

    move-result-object v0

    return-object v0
.end method

.method public atDate(Lorg/threeten/bp/LocalDate;)Lorg/threeten/bp/OffsetDateTime;
    .locals 2
    .param p1, "date"    # Lorg/threeten/bp/LocalDate;

    .prologue
    .line 1104
    iget-object v0, p0, Lorg/threeten/bp/OffsetTime;->time:Lorg/threeten/bp/LocalTime;

    iget-object v1, p0, Lorg/threeten/bp/OffsetTime;->offset:Lorg/threeten/bp/ZoneOffset;

    invoke-static {p1, v0, v1}, Lorg/threeten/bp/OffsetDateTime;->of(Lorg/threeten/bp/LocalDate;Lorg/threeten/bp/LocalTime;Lorg/threeten/bp/ZoneOffset;)Lorg/threeten/bp/OffsetDateTime;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 81
    check-cast p1, Lorg/threeten/bp/OffsetTime;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/threeten/bp/OffsetTime;->compareTo(Lorg/threeten/bp/OffsetTime;)I

    move-result v0

    return v0
.end method

.method public compareTo(Lorg/threeten/bp/OffsetTime;)I
    .locals 6
    .param p1, "other"    # Lorg/threeten/bp/OffsetTime;

    .prologue
    .line 1162
    iget-object v1, p0, Lorg/threeten/bp/OffsetTime;->offset:Lorg/threeten/bp/ZoneOffset;

    iget-object v2, p1, Lorg/threeten/bp/OffsetTime;->offset:Lorg/threeten/bp/ZoneOffset;

    invoke-virtual {v1, v2}, Lorg/threeten/bp/ZoneOffset;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1163
    iget-object v1, p0, Lorg/threeten/bp/OffsetTime;->time:Lorg/threeten/bp/LocalTime;

    iget-object v2, p1, Lorg/threeten/bp/OffsetTime;->time:Lorg/threeten/bp/LocalTime;

    invoke-virtual {v1, v2}, Lorg/threeten/bp/LocalTime;->compareTo(Lorg/threeten/bp/LocalTime;)I

    move-result v0

    .line 1169
    :cond_0
    :goto_0
    return v0

    .line 1165
    :cond_1
    invoke-direct {p0}, Lorg/threeten/bp/OffsetTime;->toEpochNano()J

    move-result-wide v2

    invoke-direct {p1}, Lorg/threeten/bp/OffsetTime;->toEpochNano()J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Lorg/threeten/bp/jdk8/Jdk8Methods;->compareLongs(JJ)I

    move-result v0

    .line 1166
    .local v0, "compare":I
    if-nez v0, :cond_0

    .line 1167
    iget-object v1, p0, Lorg/threeten/bp/OffsetTime;->time:Lorg/threeten/bp/LocalTime;

    iget-object v2, p1, Lorg/threeten/bp/OffsetTime;->time:Lorg/threeten/bp/LocalTime;

    invoke-virtual {v1, v2}, Lorg/threeten/bp/LocalTime;->compareTo(Lorg/threeten/bp/LocalTime;)I

    move-result v0

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1234
    if-ne p0, p1, :cond_1

    .line 1241
    :cond_0
    :goto_0
    return v1

    .line 1237
    :cond_1
    instance-of v3, p1, Lorg/threeten/bp/OffsetTime;

    if-eqz v3, :cond_3

    move-object v0, p1

    .line 1238
    check-cast v0, Lorg/threeten/bp/OffsetTime;

    .line 1239
    .local v0, "other":Lorg/threeten/bp/OffsetTime;
    iget-object v3, p0, Lorg/threeten/bp/OffsetTime;->time:Lorg/threeten/bp/LocalTime;

    iget-object v4, v0, Lorg/threeten/bp/OffsetTime;->time:Lorg/threeten/bp/LocalTime;

    invoke-virtual {v3, v4}, Lorg/threeten/bp/LocalTime;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lorg/threeten/bp/OffsetTime;->offset:Lorg/threeten/bp/ZoneOffset;

    iget-object v4, v0, Lorg/threeten/bp/OffsetTime;->offset:Lorg/threeten/bp/ZoneOffset;

    invoke-virtual {v3, v4}, Lorg/threeten/bp/ZoneOffset;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_2
    move v1, v2

    goto :goto_0

    .end local v0    # "other":Lorg/threeten/bp/OffsetTime;
    :cond_3
    move v1, v2

    .line 1241
    goto :goto_0
.end method

.method public format(Lorg/threeten/bp/format/DateTimeFormatter;)Ljava/lang/String;
    .locals 1
    .param p1, "formatter"    # Lorg/threeten/bp/format/DateTimeFormatter;

    .prologue
    .line 1287
    const-string v0, "formatter"

    invoke-static {p1, v0}, Lorg/threeten/bp/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1288
    invoke-virtual {p1, p0}, Lorg/threeten/bp/format/DateTimeFormatter;->format(Lorg/threeten/bp/temporal/TemporalAccessor;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public get(Lorg/threeten/bp/temporal/TemporalField;)I
    .locals 1
    .param p1, "field"    # Lorg/threeten/bp/temporal/TemporalField;

    .prologue
    .line 440
    invoke-super {p0, p1}, Lorg/threeten/bp/jdk8/DefaultInterfaceTemporalAccessor;->get(Lorg/threeten/bp/temporal/TemporalField;)I

    move-result v0

    return v0
.end method

.method public getHour()I
    .locals 1

    .prologue
    .line 543
    iget-object v0, p0, Lorg/threeten/bp/OffsetTime;->time:Lorg/threeten/bp/LocalTime;

    invoke-virtual {v0}, Lorg/threeten/bp/LocalTime;->getHour()I

    move-result v0

    return v0
.end method

.method public getLong(Lorg/threeten/bp/temporal/TemporalField;)J
    .locals 2
    .param p1, "field"    # Lorg/threeten/bp/temporal/TemporalField;

    .prologue
    .line 467
    instance-of v0, p1, Lorg/threeten/bp/temporal/ChronoField;

    if-eqz v0, :cond_1

    .line 468
    sget-object v0, Lorg/threeten/bp/temporal/ChronoField;->OFFSET_SECONDS:Lorg/threeten/bp/temporal/ChronoField;

    if-ne p1, v0, :cond_0

    .line 469
    invoke-virtual {p0}, Lorg/threeten/bp/OffsetTime;->getOffset()Lorg/threeten/bp/ZoneOffset;

    move-result-object v0

    invoke-virtual {v0}, Lorg/threeten/bp/ZoneOffset;->getTotalSeconds()I

    move-result v0

    int-to-long v0, v0

    .line 473
    :goto_0
    return-wide v0

    .line 471
    :cond_0
    iget-object v0, p0, Lorg/threeten/bp/OffsetTime;->time:Lorg/threeten/bp/LocalTime;

    invoke-virtual {v0, p1}, Lorg/threeten/bp/LocalTime;->getLong(Lorg/threeten/bp/temporal/TemporalField;)J

    move-result-wide v0

    goto :goto_0

    .line 473
    :cond_1
    invoke-interface {p1, p0}, Lorg/threeten/bp/temporal/TemporalField;->getFrom(Lorg/threeten/bp/temporal/TemporalAccessor;)J

    move-result-wide v0

    goto :goto_0
.end method

.method public getMinute()I
    .locals 1

    .prologue
    .line 552
    iget-object v0, p0, Lorg/threeten/bp/OffsetTime;->time:Lorg/threeten/bp/LocalTime;

    invoke-virtual {v0}, Lorg/threeten/bp/LocalTime;->getMinute()I

    move-result v0

    return v0
.end method

.method public getNano()I
    .locals 1

    .prologue
    .line 570
    iget-object v0, p0, Lorg/threeten/bp/OffsetTime;->time:Lorg/threeten/bp/LocalTime;

    invoke-virtual {v0}, Lorg/threeten/bp/LocalTime;->getNano()I

    move-result v0

    return v0
.end method

.method public getOffset()Lorg/threeten/bp/ZoneOffset;
    .locals 1

    .prologue
    .line 485
    iget-object v0, p0, Lorg/threeten/bp/OffsetTime;->offset:Lorg/threeten/bp/ZoneOffset;

    return-object v0
.end method

.method public getSecond()I
    .locals 1

    .prologue
    .line 561
    iget-object v0, p0, Lorg/threeten/bp/OffsetTime;->time:Lorg/threeten/bp/LocalTime;

    invoke-virtual {v0}, Lorg/threeten/bp/LocalTime;->getSecond()I

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 1251
    iget-object v0, p0, Lorg/threeten/bp/OffsetTime;->time:Lorg/threeten/bp/LocalTime;

    invoke-virtual {v0}, Lorg/threeten/bp/LocalTime;->hashCode()I

    move-result v0

    iget-object v1, p0, Lorg/threeten/bp/OffsetTime;->offset:Lorg/threeten/bp/ZoneOffset;

    invoke-virtual {v1}, Lorg/threeten/bp/ZoneOffset;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public isAfter(Lorg/threeten/bp/OffsetTime;)Z
    .locals 4
    .param p1, "other"    # Lorg/threeten/bp/OffsetTime;

    .prologue
    .line 1185
    invoke-direct {p0}, Lorg/threeten/bp/OffsetTime;->toEpochNano()J

    move-result-wide v0

    invoke-direct {p1}, Lorg/threeten/bp/OffsetTime;->toEpochNano()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isBefore(Lorg/threeten/bp/OffsetTime;)Z
    .locals 4
    .param p1, "other"    # Lorg/threeten/bp/OffsetTime;

    .prologue
    .line 1200
    invoke-direct {p0}, Lorg/threeten/bp/OffsetTime;->toEpochNano()J

    move-result-wide v0

    invoke-direct {p1}, Lorg/threeten/bp/OffsetTime;->toEpochNano()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEqual(Lorg/threeten/bp/OffsetTime;)Z
    .locals 4
    .param p1, "other"    # Lorg/threeten/bp/OffsetTime;

    .prologue
    .line 1215
    invoke-direct {p0}, Lorg/threeten/bp/OffsetTime;->toEpochNano()J

    move-result-wide v0

    invoke-direct {p1}, Lorg/threeten/bp/OffsetTime;->toEpochNano()J

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

.method public isSupported(Lorg/threeten/bp/temporal/TemporalField;)Z
    .locals 3
    .param p1, "field"    # Lorg/threeten/bp/temporal/TemporalField;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 367
    instance-of v2, p1, Lorg/threeten/bp/temporal/ChronoField;

    if-eqz v2, :cond_2

    .line 368
    invoke-interface {p1}, Lorg/threeten/bp/temporal/TemporalField;->isTimeBased()Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lorg/threeten/bp/temporal/ChronoField;->OFFSET_SECONDS:Lorg/threeten/bp/temporal/ChronoField;

    if-ne p1, v2, :cond_1

    :cond_0
    move v0, v1

    .line 370
    :cond_1
    :goto_0
    return v0

    :cond_2
    if-eqz p1, :cond_3

    invoke-interface {p1, p0}, Lorg/threeten/bp/temporal/TemporalField;->isSupportedBy(Lorg/threeten/bp/temporal/TemporalAccessor;)Z

    move-result v2

    if-eqz v2, :cond_3

    :goto_1
    move v0, v1

    goto :goto_0

    :cond_3
    move v1, v0

    goto :goto_1
.end method

.method public isSupported(Lorg/threeten/bp/temporal/TemporalUnit;)Z
    .locals 1
    .param p1, "unit"    # Lorg/threeten/bp/temporal/TemporalUnit;

    .prologue
    .line 375
    instance-of v0, p1, Lorg/threeten/bp/temporal/ChronoUnit;

    if-eqz v0, :cond_0

    .line 376
    invoke-interface {p1}, Lorg/threeten/bp/temporal/TemporalUnit;->isTimeBased()Z

    move-result v0

    .line 378
    :goto_0
    return v0

    :cond_0
    if-eqz p1, :cond_1

    invoke-interface {p1, p0}, Lorg/threeten/bp/temporal/TemporalUnit;->isSupportedBy(Lorg/threeten/bp/temporal/Temporal;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public minus(JLorg/threeten/bp/temporal/TemporalUnit;)Lorg/threeten/bp/OffsetTime;
    .locals 5
    .param p1, "amountToSubtract"    # J
    .param p3, "unit"    # Lorg/threeten/bp/temporal/TemporalUnit;

    .prologue
    .line 897
    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1, p3}, Lorg/threeten/bp/OffsetTime;->plus(JLorg/threeten/bp/temporal/TemporalUnit;)Lorg/threeten/bp/OffsetTime;

    move-result-object v0

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v2, v3, p3}, Lorg/threeten/bp/OffsetTime;->plus(JLorg/threeten/bp/temporal/TemporalUnit;)Lorg/threeten/bp/OffsetTime;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    neg-long v0, p1

    invoke-virtual {p0, v0, v1, p3}, Lorg/threeten/bp/OffsetTime;->plus(JLorg/threeten/bp/temporal/TemporalUnit;)Lorg/threeten/bp/OffsetTime;

    move-result-object v0

    goto :goto_0
.end method

.method public minus(Lorg/threeten/bp/temporal/TemporalAmount;)Lorg/threeten/bp/OffsetTime;
    .locals 1
    .param p1, "amount"    # Lorg/threeten/bp/temporal/TemporalAmount;

    .prologue
    .line 876
    invoke-interface {p1, p0}, Lorg/threeten/bp/temporal/TemporalAmount;->subtractFrom(Lorg/threeten/bp/temporal/Temporal;)Lorg/threeten/bp/temporal/Temporal;

    move-result-object v0

    check-cast v0, Lorg/threeten/bp/OffsetTime;

    return-object v0
.end method

.method public bridge synthetic minus(JLorg/threeten/bp/temporal/TemporalUnit;)Lorg/threeten/bp/temporal/Temporal;
    .locals 1
    .param p1, "x0"    # J
    .param p3, "x1"    # Lorg/threeten/bp/temporal/TemporalUnit;

    .prologue
    .line 81
    invoke-virtual {p0, p1, p2, p3}, Lorg/threeten/bp/OffsetTime;->minus(JLorg/threeten/bp/temporal/TemporalUnit;)Lorg/threeten/bp/OffsetTime;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic minus(Lorg/threeten/bp/temporal/TemporalAmount;)Lorg/threeten/bp/temporal/Temporal;
    .locals 1
    .param p1, "x0"    # Lorg/threeten/bp/temporal/TemporalAmount;

    .prologue
    .line 81
    invoke-virtual {p0, p1}, Lorg/threeten/bp/OffsetTime;->minus(Lorg/threeten/bp/temporal/TemporalAmount;)Lorg/threeten/bp/OffsetTime;

    move-result-object v0

    return-object v0
.end method

.method public minusHours(J)Lorg/threeten/bp/OffsetTime;
    .locals 3
    .param p1, "hours"    # J

    .prologue
    .line 913
    iget-object v0, p0, Lorg/threeten/bp/OffsetTime;->time:Lorg/threeten/bp/LocalTime;

    invoke-virtual {v0, p1, p2}, Lorg/threeten/bp/LocalTime;->minusHours(J)Lorg/threeten/bp/LocalTime;

    move-result-object v0

    iget-object v1, p0, Lorg/threeten/bp/OffsetTime;->offset:Lorg/threeten/bp/ZoneOffset;

    invoke-direct {p0, v0, v1}, Lorg/threeten/bp/OffsetTime;->with(Lorg/threeten/bp/LocalTime;Lorg/threeten/bp/ZoneOffset;)Lorg/threeten/bp/OffsetTime;

    move-result-object v0

    return-object v0
.end method

.method public minusMinutes(J)Lorg/threeten/bp/OffsetTime;
    .locals 3
    .param p1, "minutes"    # J

    .prologue
    .line 928
    iget-object v0, p0, Lorg/threeten/bp/OffsetTime;->time:Lorg/threeten/bp/LocalTime;

    invoke-virtual {v0, p1, p2}, Lorg/threeten/bp/LocalTime;->minusMinutes(J)Lorg/threeten/bp/LocalTime;

    move-result-object v0

    iget-object v1, p0, Lorg/threeten/bp/OffsetTime;->offset:Lorg/threeten/bp/ZoneOffset;

    invoke-direct {p0, v0, v1}, Lorg/threeten/bp/OffsetTime;->with(Lorg/threeten/bp/LocalTime;Lorg/threeten/bp/ZoneOffset;)Lorg/threeten/bp/OffsetTime;

    move-result-object v0

    return-object v0
.end method

.method public minusNanos(J)Lorg/threeten/bp/OffsetTime;
    .locals 3
    .param p1, "nanos"    # J

    .prologue
    .line 958
    iget-object v0, p0, Lorg/threeten/bp/OffsetTime;->time:Lorg/threeten/bp/LocalTime;

    invoke-virtual {v0, p1, p2}, Lorg/threeten/bp/LocalTime;->minusNanos(J)Lorg/threeten/bp/LocalTime;

    move-result-object v0

    iget-object v1, p0, Lorg/threeten/bp/OffsetTime;->offset:Lorg/threeten/bp/ZoneOffset;

    invoke-direct {p0, v0, v1}, Lorg/threeten/bp/OffsetTime;->with(Lorg/threeten/bp/LocalTime;Lorg/threeten/bp/ZoneOffset;)Lorg/threeten/bp/OffsetTime;

    move-result-object v0

    return-object v0
.end method

.method public minusSeconds(J)Lorg/threeten/bp/OffsetTime;
    .locals 3
    .param p1, "seconds"    # J

    .prologue
    .line 943
    iget-object v0, p0, Lorg/threeten/bp/OffsetTime;->time:Lorg/threeten/bp/LocalTime;

    invoke-virtual {v0, p1, p2}, Lorg/threeten/bp/LocalTime;->minusSeconds(J)Lorg/threeten/bp/LocalTime;

    move-result-object v0

    iget-object v1, p0, Lorg/threeten/bp/OffsetTime;->offset:Lorg/threeten/bp/ZoneOffset;

    invoke-direct {p0, v0, v1}, Lorg/threeten/bp/OffsetTime;->with(Lorg/threeten/bp/LocalTime;Lorg/threeten/bp/ZoneOffset;)Lorg/threeten/bp/OffsetTime;

    move-result-object v0

    return-object v0
.end method

.method public plus(JLorg/threeten/bp/temporal/TemporalUnit;)Lorg/threeten/bp/OffsetTime;
    .locals 3
    .param p1, "amountToAdd"    # J
    .param p3, "unit"    # Lorg/threeten/bp/temporal/TemporalUnit;

    .prologue
    .line 789
    instance-of v0, p3, Lorg/threeten/bp/temporal/ChronoUnit;

    if-eqz v0, :cond_0

    .line 790
    iget-object v0, p0, Lorg/threeten/bp/OffsetTime;->time:Lorg/threeten/bp/LocalTime;

    invoke-virtual {v0, p1, p2, p3}, Lorg/threeten/bp/LocalTime;->plus(JLorg/threeten/bp/temporal/TemporalUnit;)Lorg/threeten/bp/LocalTime;

    move-result-object v0

    iget-object v1, p0, Lorg/threeten/bp/OffsetTime;->offset:Lorg/threeten/bp/ZoneOffset;

    invoke-direct {p0, v0, v1}, Lorg/threeten/bp/OffsetTime;->with(Lorg/threeten/bp/LocalTime;Lorg/threeten/bp/ZoneOffset;)Lorg/threeten/bp/OffsetTime;

    move-result-object v0

    .line 792
    :goto_0
    return-object v0

    :cond_0
    invoke-interface {p3, p0, p1, p2}, Lorg/threeten/bp/temporal/TemporalUnit;->addTo(Lorg/threeten/bp/temporal/Temporal;J)Lorg/threeten/bp/temporal/Temporal;

    move-result-object v0

    check-cast v0, Lorg/threeten/bp/OffsetTime;

    goto :goto_0
.end method

.method public plus(Lorg/threeten/bp/temporal/TemporalAmount;)Lorg/threeten/bp/OffsetTime;
    .locals 1
    .param p1, "amount"    # Lorg/threeten/bp/temporal/TemporalAmount;

    .prologue
    .line 768
    invoke-interface {p1, p0}, Lorg/threeten/bp/temporal/TemporalAmount;->addTo(Lorg/threeten/bp/temporal/Temporal;)Lorg/threeten/bp/temporal/Temporal;

    move-result-object v0

    check-cast v0, Lorg/threeten/bp/OffsetTime;

    return-object v0
.end method

.method public bridge synthetic plus(JLorg/threeten/bp/temporal/TemporalUnit;)Lorg/threeten/bp/temporal/Temporal;
    .locals 1
    .param p1, "x0"    # J
    .param p3, "x1"    # Lorg/threeten/bp/temporal/TemporalUnit;

    .prologue
    .line 81
    invoke-virtual {p0, p1, p2, p3}, Lorg/threeten/bp/OffsetTime;->plus(JLorg/threeten/bp/temporal/TemporalUnit;)Lorg/threeten/bp/OffsetTime;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic plus(Lorg/threeten/bp/temporal/TemporalAmount;)Lorg/threeten/bp/temporal/Temporal;
    .locals 1
    .param p1, "x0"    # Lorg/threeten/bp/temporal/TemporalAmount;

    .prologue
    .line 81
    invoke-virtual {p0, p1}, Lorg/threeten/bp/OffsetTime;->plus(Lorg/threeten/bp/temporal/TemporalAmount;)Lorg/threeten/bp/OffsetTime;

    move-result-object v0

    return-object v0
.end method

.method public plusHours(J)Lorg/threeten/bp/OffsetTime;
    .locals 3
    .param p1, "hours"    # J

    .prologue
    .line 808
    iget-object v0, p0, Lorg/threeten/bp/OffsetTime;->time:Lorg/threeten/bp/LocalTime;

    invoke-virtual {v0, p1, p2}, Lorg/threeten/bp/LocalTime;->plusHours(J)Lorg/threeten/bp/LocalTime;

    move-result-object v0

    iget-object v1, p0, Lorg/threeten/bp/OffsetTime;->offset:Lorg/threeten/bp/ZoneOffset;

    invoke-direct {p0, v0, v1}, Lorg/threeten/bp/OffsetTime;->with(Lorg/threeten/bp/LocalTime;Lorg/threeten/bp/ZoneOffset;)Lorg/threeten/bp/OffsetTime;

    move-result-object v0

    return-object v0
.end method

.method public plusMinutes(J)Lorg/threeten/bp/OffsetTime;
    .locals 3
    .param p1, "minutes"    # J

    .prologue
    .line 823
    iget-object v0, p0, Lorg/threeten/bp/OffsetTime;->time:Lorg/threeten/bp/LocalTime;

    invoke-virtual {v0, p1, p2}, Lorg/threeten/bp/LocalTime;->plusMinutes(J)Lorg/threeten/bp/LocalTime;

    move-result-object v0

    iget-object v1, p0, Lorg/threeten/bp/OffsetTime;->offset:Lorg/threeten/bp/ZoneOffset;

    invoke-direct {p0, v0, v1}, Lorg/threeten/bp/OffsetTime;->with(Lorg/threeten/bp/LocalTime;Lorg/threeten/bp/ZoneOffset;)Lorg/threeten/bp/OffsetTime;

    move-result-object v0

    return-object v0
.end method

.method public plusNanos(J)Lorg/threeten/bp/OffsetTime;
    .locals 3
    .param p1, "nanos"    # J

    .prologue
    .line 853
    iget-object v0, p0, Lorg/threeten/bp/OffsetTime;->time:Lorg/threeten/bp/LocalTime;

    invoke-virtual {v0, p1, p2}, Lorg/threeten/bp/LocalTime;->plusNanos(J)Lorg/threeten/bp/LocalTime;

    move-result-object v0

    iget-object v1, p0, Lorg/threeten/bp/OffsetTime;->offset:Lorg/threeten/bp/ZoneOffset;

    invoke-direct {p0, v0, v1}, Lorg/threeten/bp/OffsetTime;->with(Lorg/threeten/bp/LocalTime;Lorg/threeten/bp/ZoneOffset;)Lorg/threeten/bp/OffsetTime;

    move-result-object v0

    return-object v0
.end method

.method public plusSeconds(J)Lorg/threeten/bp/OffsetTime;
    .locals 3
    .param p1, "seconds"    # J

    .prologue
    .line 838
    iget-object v0, p0, Lorg/threeten/bp/OffsetTime;->time:Lorg/threeten/bp/LocalTime;

    invoke-virtual {v0, p1, p2}, Lorg/threeten/bp/LocalTime;->plusSeconds(J)Lorg/threeten/bp/LocalTime;

    move-result-object v0

    iget-object v1, p0, Lorg/threeten/bp/OffsetTime;->offset:Lorg/threeten/bp/ZoneOffset;

    invoke-direct {p0, v0, v1}, Lorg/threeten/bp/OffsetTime;->with(Lorg/threeten/bp/LocalTime;Lorg/threeten/bp/ZoneOffset;)Lorg/threeten/bp/OffsetTime;

    move-result-object v0

    return-object v0
.end method

.method public query(Lorg/threeten/bp/temporal/TemporalQuery;)Ljava/lang/Object;
    .locals 1
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
    .line 983
    .local p1, "query":Lorg/threeten/bp/temporal/TemporalQuery;, "Lorg/threeten/bp/temporal/TemporalQuery<TR;>;"
    invoke-static {}, Lorg/threeten/bp/temporal/TemporalQueries;->precision()Lorg/threeten/bp/temporal/TemporalQuery;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 984
    sget-object v0, Lorg/threeten/bp/temporal/ChronoUnit;->NANOS:Lorg/threeten/bp/temporal/ChronoUnit;

    .line 992
    :goto_0
    return-object v0

    .line 985
    :cond_0
    invoke-static {}, Lorg/threeten/bp/temporal/TemporalQueries;->offset()Lorg/threeten/bp/temporal/TemporalQuery;

    move-result-object v0

    if-eq p1, v0, :cond_1

    invoke-static {}, Lorg/threeten/bp/temporal/TemporalQueries;->zone()Lorg/threeten/bp/temporal/TemporalQuery;

    move-result-object v0

    if-ne p1, v0, :cond_2

    .line 986
    :cond_1
    invoke-virtual {p0}, Lorg/threeten/bp/OffsetTime;->getOffset()Lorg/threeten/bp/ZoneOffset;

    move-result-object v0

    goto :goto_0

    .line 987
    :cond_2
    invoke-static {}, Lorg/threeten/bp/temporal/TemporalQueries;->localTime()Lorg/threeten/bp/temporal/TemporalQuery;

    move-result-object v0

    if-ne p1, v0, :cond_3

    .line 988
    iget-object v0, p0, Lorg/threeten/bp/OffsetTime;->time:Lorg/threeten/bp/LocalTime;

    goto :goto_0

    .line 989
    :cond_3
    invoke-static {}, Lorg/threeten/bp/temporal/TemporalQueries;->chronology()Lorg/threeten/bp/temporal/TemporalQuery;

    move-result-object v0

    if-eq p1, v0, :cond_4

    invoke-static {}, Lorg/threeten/bp/temporal/TemporalQueries;->localDate()Lorg/threeten/bp/temporal/TemporalQuery;

    move-result-object v0

    if-eq p1, v0, :cond_4

    invoke-static {}, Lorg/threeten/bp/temporal/TemporalQueries;->zoneId()Lorg/threeten/bp/temporal/TemporalQuery;

    move-result-object v0

    if-ne p1, v0, :cond_5

    .line 990
    :cond_4
    const/4 v0, 0x0

    goto :goto_0

    .line 992
    :cond_5
    invoke-super {p0, p1}, Lorg/threeten/bp/jdk8/DefaultInterfaceTemporalAccessor;->query(Lorg/threeten/bp/temporal/TemporalQuery;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public range(Lorg/threeten/bp/temporal/TemporalField;)Lorg/threeten/bp/temporal/ValueRange;
    .locals 1
    .param p1, "field"    # Lorg/threeten/bp/temporal/TemporalField;

    .prologue
    .line 405
    instance-of v0, p1, Lorg/threeten/bp/temporal/ChronoField;

    if-eqz v0, :cond_1

    .line 406
    sget-object v0, Lorg/threeten/bp/temporal/ChronoField;->OFFSET_SECONDS:Lorg/threeten/bp/temporal/ChronoField;

    if-ne p1, v0, :cond_0

    .line 407
    invoke-interface {p1}, Lorg/threeten/bp/temporal/TemporalField;->range()Lorg/threeten/bp/temporal/ValueRange;

    move-result-object v0

    .line 411
    :goto_0
    return-object v0

    .line 409
    :cond_0
    iget-object v0, p0, Lorg/threeten/bp/OffsetTime;->time:Lorg/threeten/bp/LocalTime;

    invoke-virtual {v0, p1}, Lorg/threeten/bp/LocalTime;->range(Lorg/threeten/bp/temporal/TemporalField;)Lorg/threeten/bp/temporal/ValueRange;

    move-result-object v0

    goto :goto_0

    .line 411
    :cond_1
    invoke-interface {p1, p0}, Lorg/threeten/bp/temporal/TemporalField;->rangeRefinedBy(Lorg/threeten/bp/temporal/TemporalAccessor;)Lorg/threeten/bp/temporal/ValueRange;

    move-result-object v0

    goto :goto_0
.end method

.method public toLocalTime()Lorg/threeten/bp/LocalTime;
    .locals 1

    .prologue
    .line 1117
    iget-object v0, p0, Lorg/threeten/bp/OffsetTime;->time:Lorg/threeten/bp/LocalTime;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1273
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/threeten/bp/OffsetTime;->time:Lorg/threeten/bp/LocalTime;

    invoke-virtual {v1}, Lorg/threeten/bp/LocalTime;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/threeten/bp/OffsetTime;->offset:Lorg/threeten/bp/ZoneOffset;

    invoke-virtual {v1}, Lorg/threeten/bp/ZoneOffset;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public truncatedTo(Lorg/threeten/bp/temporal/TemporalUnit;)Lorg/threeten/bp/OffsetTime;
    .locals 2
    .param p1, "unit"    # Lorg/threeten/bp/temporal/TemporalUnit;

    .prologue
    .line 745
    iget-object v0, p0, Lorg/threeten/bp/OffsetTime;->time:Lorg/threeten/bp/LocalTime;

    invoke-virtual {v0, p1}, Lorg/threeten/bp/LocalTime;->truncatedTo(Lorg/threeten/bp/temporal/TemporalUnit;)Lorg/threeten/bp/LocalTime;

    move-result-object v0

    iget-object v1, p0, Lorg/threeten/bp/OffsetTime;->offset:Lorg/threeten/bp/ZoneOffset;

    invoke-direct {p0, v0, v1}, Lorg/threeten/bp/OffsetTime;->with(Lorg/threeten/bp/LocalTime;Lorg/threeten/bp/ZoneOffset;)Lorg/threeten/bp/OffsetTime;

    move-result-object v0

    return-object v0
.end method

.method public until(Lorg/threeten/bp/temporal/Temporal;Lorg/threeten/bp/temporal/TemporalUnit;)J
    .locals 8
    .param p1, "endExclusive"    # Lorg/threeten/bp/temporal/Temporal;
    .param p2, "unit"    # Lorg/threeten/bp/temporal/TemporalUnit;

    .prologue
    .line 1076
    invoke-static {p1}, Lorg/threeten/bp/OffsetTime;->from(Lorg/threeten/bp/temporal/TemporalAccessor;)Lorg/threeten/bp/OffsetTime;

    move-result-object v0

    .line 1077
    .local v0, "end":Lorg/threeten/bp/OffsetTime;
    instance-of v1, p2, Lorg/threeten/bp/temporal/ChronoUnit;

    if-eqz v1, :cond_0

    .line 1078
    invoke-direct {v0}, Lorg/threeten/bp/OffsetTime;->toEpochNano()J

    move-result-wide v4

    invoke-direct {p0}, Lorg/threeten/bp/OffsetTime;->toEpochNano()J

    move-result-wide v6

    sub-long v2, v4, v6

    .line 1079
    .local v2, "nanosUntil":J
    sget-object v4, Lorg/threeten/bp/OffsetTime$2;->$SwitchMap$org$threeten$bp$temporal$ChronoUnit:[I

    move-object v1, p2

    check-cast v1, Lorg/threeten/bp/temporal/ChronoUnit;

    invoke-virtual {v1}, Lorg/threeten/bp/temporal/ChronoUnit;->ordinal()I

    move-result v1

    aget v1, v4, v1

    packed-switch v1, :pswitch_data_0

    .line 1088
    new-instance v1, Lorg/threeten/bp/temporal/UnsupportedTemporalTypeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unsupported unit: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Lorg/threeten/bp/temporal/UnsupportedTemporalTypeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1081
    :pswitch_0
    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    .line 1090
    .end local v2    # "nanosUntil":J
    :goto_0
    :pswitch_1
    return-wide v2

    .line 1082
    .restart local v2    # "nanosUntil":J
    :pswitch_2
    const-wide/32 v4, 0xf4240

    div-long/2addr v2, v4

    goto :goto_0

    .line 1083
    :pswitch_3
    const-wide/32 v4, 0x3b9aca00

    div-long/2addr v2, v4

    goto :goto_0

    .line 1084
    :pswitch_4
    const-wide v4, 0xdf8475800L

    div-long/2addr v2, v4

    goto :goto_0

    .line 1085
    :pswitch_5
    const-wide v4, 0x34630b8a000L

    div-long/2addr v2, v4

    goto :goto_0

    .line 1086
    :pswitch_6
    const-wide v4, 0x274a48a78000L

    div-long/2addr v2, v4

    goto :goto_0

    .line 1090
    .end local v2    # "nanosUntil":J
    :cond_0
    invoke-interface {p2, p0, v0}, Lorg/threeten/bp/temporal/TemporalUnit;->between(Lorg/threeten/bp/temporal/Temporal;Lorg/threeten/bp/temporal/Temporal;)J

    move-result-wide v2

    goto :goto_0

    .line 1079
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public with(Lorg/threeten/bp/temporal/TemporalAdjuster;)Lorg/threeten/bp/OffsetTime;
    .locals 1
    .param p1, "adjuster"    # Lorg/threeten/bp/temporal/TemporalAdjuster;

    .prologue
    .line 605
    instance-of v0, p1, Lorg/threeten/bp/LocalTime;

    if-eqz v0, :cond_0

    .line 606
    check-cast p1, Lorg/threeten/bp/LocalTime;

    .end local p1    # "adjuster":Lorg/threeten/bp/temporal/TemporalAdjuster;
    iget-object v0, p0, Lorg/threeten/bp/OffsetTime;->offset:Lorg/threeten/bp/ZoneOffset;

    invoke-direct {p0, p1, v0}, Lorg/threeten/bp/OffsetTime;->with(Lorg/threeten/bp/LocalTime;Lorg/threeten/bp/ZoneOffset;)Lorg/threeten/bp/OffsetTime;

    move-result-object p1

    .line 612
    :goto_0
    return-object p1

    .line 607
    .restart local p1    # "adjuster":Lorg/threeten/bp/temporal/TemporalAdjuster;
    :cond_0
    instance-of v0, p1, Lorg/threeten/bp/ZoneOffset;

    if-eqz v0, :cond_1

    .line 608
    iget-object v0, p0, Lorg/threeten/bp/OffsetTime;->time:Lorg/threeten/bp/LocalTime;

    check-cast p1, Lorg/threeten/bp/ZoneOffset;

    .end local p1    # "adjuster":Lorg/threeten/bp/temporal/TemporalAdjuster;
    invoke-direct {p0, v0, p1}, Lorg/threeten/bp/OffsetTime;->with(Lorg/threeten/bp/LocalTime;Lorg/threeten/bp/ZoneOffset;)Lorg/threeten/bp/OffsetTime;

    move-result-object p1

    goto :goto_0

    .line 609
    .restart local p1    # "adjuster":Lorg/threeten/bp/temporal/TemporalAdjuster;
    :cond_1
    instance-of v0, p1, Lorg/threeten/bp/OffsetTime;

    if-eqz v0, :cond_2

    .line 610
    check-cast p1, Lorg/threeten/bp/OffsetTime;

    goto :goto_0

    .line 612
    :cond_2
    invoke-interface {p1, p0}, Lorg/threeten/bp/temporal/TemporalAdjuster;->adjustInto(Lorg/threeten/bp/temporal/Temporal;)Lorg/threeten/bp/temporal/Temporal;

    move-result-object v0

    check-cast v0, Lorg/threeten/bp/OffsetTime;

    move-object p1, v0

    goto :goto_0
.end method

.method public with(Lorg/threeten/bp/temporal/TemporalField;J)Lorg/threeten/bp/OffsetTime;
    .locals 4
    .param p1, "field"    # Lorg/threeten/bp/temporal/TemporalField;
    .param p2, "newValue"    # J

    .prologue
    .line 651
    instance-of v1, p1, Lorg/threeten/bp/temporal/ChronoField;

    if-eqz v1, :cond_1

    .line 652
    sget-object v1, Lorg/threeten/bp/temporal/ChronoField;->OFFSET_SECONDS:Lorg/threeten/bp/temporal/ChronoField;

    if-ne p1, v1, :cond_0

    move-object v0, p1

    .line 653
    check-cast v0, Lorg/threeten/bp/temporal/ChronoField;

    .line 654
    .local v0, "f":Lorg/threeten/bp/temporal/ChronoField;
    iget-object v1, p0, Lorg/threeten/bp/OffsetTime;->time:Lorg/threeten/bp/LocalTime;

    invoke-virtual {v0, p2, p3}, Lorg/threeten/bp/temporal/ChronoField;->checkValidIntValue(J)I

    move-result v2

    invoke-static {v2}, Lorg/threeten/bp/ZoneOffset;->ofTotalSeconds(I)Lorg/threeten/bp/ZoneOffset;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lorg/threeten/bp/OffsetTime;->with(Lorg/threeten/bp/LocalTime;Lorg/threeten/bp/ZoneOffset;)Lorg/threeten/bp/OffsetTime;

    move-result-object v1

    .line 658
    .end local v0    # "f":Lorg/threeten/bp/temporal/ChronoField;
    :goto_0
    return-object v1

    .line 656
    :cond_0
    iget-object v1, p0, Lorg/threeten/bp/OffsetTime;->time:Lorg/threeten/bp/LocalTime;

    invoke-virtual {v1, p1, p2, p3}, Lorg/threeten/bp/LocalTime;->with(Lorg/threeten/bp/temporal/TemporalField;J)Lorg/threeten/bp/LocalTime;

    move-result-object v1

    iget-object v2, p0, Lorg/threeten/bp/OffsetTime;->offset:Lorg/threeten/bp/ZoneOffset;

    invoke-direct {p0, v1, v2}, Lorg/threeten/bp/OffsetTime;->with(Lorg/threeten/bp/LocalTime;Lorg/threeten/bp/ZoneOffset;)Lorg/threeten/bp/OffsetTime;

    move-result-object v1

    goto :goto_0

    .line 658
    :cond_1
    invoke-interface {p1, p0, p2, p3}, Lorg/threeten/bp/temporal/TemporalField;->adjustInto(Lorg/threeten/bp/temporal/Temporal;J)Lorg/threeten/bp/temporal/Temporal;

    move-result-object v1

    check-cast v1, Lorg/threeten/bp/OffsetTime;

    goto :goto_0
.end method

.method public bridge synthetic with(Lorg/threeten/bp/temporal/TemporalAdjuster;)Lorg/threeten/bp/temporal/Temporal;
    .locals 1
    .param p1, "x0"    # Lorg/threeten/bp/temporal/TemporalAdjuster;

    .prologue
    .line 81
    invoke-virtual {p0, p1}, Lorg/threeten/bp/OffsetTime;->with(Lorg/threeten/bp/temporal/TemporalAdjuster;)Lorg/threeten/bp/OffsetTime;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic with(Lorg/threeten/bp/temporal/TemporalField;J)Lorg/threeten/bp/temporal/Temporal;
    .locals 2
    .param p1, "x0"    # Lorg/threeten/bp/temporal/TemporalField;
    .param p2, "x1"    # J

    .prologue
    .line 81
    invoke-virtual {p0, p1, p2, p3}, Lorg/threeten/bp/OffsetTime;->with(Lorg/threeten/bp/temporal/TemporalField;J)Lorg/threeten/bp/OffsetTime;

    move-result-object v0

    return-object v0
.end method

.method public withHour(I)Lorg/threeten/bp/OffsetTime;
    .locals 2
    .param p1, "hour"    # I

    .prologue
    .line 674
    iget-object v0, p0, Lorg/threeten/bp/OffsetTime;->time:Lorg/threeten/bp/LocalTime;

    invoke-virtual {v0, p1}, Lorg/threeten/bp/LocalTime;->withHour(I)Lorg/threeten/bp/LocalTime;

    move-result-object v0

    iget-object v1, p0, Lorg/threeten/bp/OffsetTime;->offset:Lorg/threeten/bp/ZoneOffset;

    invoke-direct {p0, v0, v1}, Lorg/threeten/bp/OffsetTime;->with(Lorg/threeten/bp/LocalTime;Lorg/threeten/bp/ZoneOffset;)Lorg/threeten/bp/OffsetTime;

    move-result-object v0

    return-object v0
.end method

.method public withMinute(I)Lorg/threeten/bp/OffsetTime;
    .locals 2
    .param p1, "minute"    # I

    .prologue
    .line 689
    iget-object v0, p0, Lorg/threeten/bp/OffsetTime;->time:Lorg/threeten/bp/LocalTime;

    invoke-virtual {v0, p1}, Lorg/threeten/bp/LocalTime;->withMinute(I)Lorg/threeten/bp/LocalTime;

    move-result-object v0

    iget-object v1, p0, Lorg/threeten/bp/OffsetTime;->offset:Lorg/threeten/bp/ZoneOffset;

    invoke-direct {p0, v0, v1}, Lorg/threeten/bp/OffsetTime;->with(Lorg/threeten/bp/LocalTime;Lorg/threeten/bp/ZoneOffset;)Lorg/threeten/bp/OffsetTime;

    move-result-object v0

    return-object v0
.end method

.method public withNano(I)Lorg/threeten/bp/OffsetTime;
    .locals 2
    .param p1, "nanoOfSecond"    # I

    .prologue
    .line 719
    iget-object v0, p0, Lorg/threeten/bp/OffsetTime;->time:Lorg/threeten/bp/LocalTime;

    invoke-virtual {v0, p1}, Lorg/threeten/bp/LocalTime;->withNano(I)Lorg/threeten/bp/LocalTime;

    move-result-object v0

    iget-object v1, p0, Lorg/threeten/bp/OffsetTime;->offset:Lorg/threeten/bp/ZoneOffset;

    invoke-direct {p0, v0, v1}, Lorg/threeten/bp/OffsetTime;->with(Lorg/threeten/bp/LocalTime;Lorg/threeten/bp/ZoneOffset;)Lorg/threeten/bp/OffsetTime;

    move-result-object v0

    return-object v0
.end method

.method public withOffsetSameInstant(Lorg/threeten/bp/ZoneOffset;)Lorg/threeten/bp/OffsetTime;
    .locals 6
    .param p1, "offset"    # Lorg/threeten/bp/ZoneOffset;

    .prologue
    .line 528
    iget-object v2, p0, Lorg/threeten/bp/OffsetTime;->offset:Lorg/threeten/bp/ZoneOffset;

    invoke-virtual {p1, v2}, Lorg/threeten/bp/ZoneOffset;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 533
    .end local p0    # "this":Lorg/threeten/bp/OffsetTime;
    :goto_0
    return-object p0

    .line 531
    .restart local p0    # "this":Lorg/threeten/bp/OffsetTime;
    :cond_0
    invoke-virtual {p1}, Lorg/threeten/bp/ZoneOffset;->getTotalSeconds()I

    move-result v2

    iget-object v3, p0, Lorg/threeten/bp/OffsetTime;->offset:Lorg/threeten/bp/ZoneOffset;

    invoke-virtual {v3}, Lorg/threeten/bp/ZoneOffset;->getTotalSeconds()I

    move-result v3

    sub-int v1, v2, v3

    .line 532
    .local v1, "difference":I
    iget-object v2, p0, Lorg/threeten/bp/OffsetTime;->time:Lorg/threeten/bp/LocalTime;

    int-to-long v4, v1

    invoke-virtual {v2, v4, v5}, Lorg/threeten/bp/LocalTime;->plusSeconds(J)Lorg/threeten/bp/LocalTime;

    move-result-object v0

    .line 533
    .local v0, "adjusted":Lorg/threeten/bp/LocalTime;
    new-instance p0, Lorg/threeten/bp/OffsetTime;

    .end local p0    # "this":Lorg/threeten/bp/OffsetTime;
    invoke-direct {p0, v0, p1}, Lorg/threeten/bp/OffsetTime;-><init>(Lorg/threeten/bp/LocalTime;Lorg/threeten/bp/ZoneOffset;)V

    goto :goto_0
.end method

.method public withOffsetSameLocal(Lorg/threeten/bp/ZoneOffset;)Lorg/threeten/bp/OffsetTime;
    .locals 2
    .param p1, "offset"    # Lorg/threeten/bp/ZoneOffset;

    .prologue
    .line 506
    if-eqz p1, :cond_0

    iget-object v0, p0, Lorg/threeten/bp/OffsetTime;->offset:Lorg/threeten/bp/ZoneOffset;

    invoke-virtual {p1, v0}, Lorg/threeten/bp/ZoneOffset;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .end local p0    # "this":Lorg/threeten/bp/OffsetTime;
    :goto_0
    return-object p0

    .restart local p0    # "this":Lorg/threeten/bp/OffsetTime;
    :cond_0
    new-instance v0, Lorg/threeten/bp/OffsetTime;

    iget-object v1, p0, Lorg/threeten/bp/OffsetTime;->time:Lorg/threeten/bp/LocalTime;

    invoke-direct {v0, v1, p1}, Lorg/threeten/bp/OffsetTime;-><init>(Lorg/threeten/bp/LocalTime;Lorg/threeten/bp/ZoneOffset;)V

    move-object p0, v0

    goto :goto_0
.end method

.method public withSecond(I)Lorg/threeten/bp/OffsetTime;
    .locals 2
    .param p1, "second"    # I

    .prologue
    .line 704
    iget-object v0, p0, Lorg/threeten/bp/OffsetTime;->time:Lorg/threeten/bp/LocalTime;

    invoke-virtual {v0, p1}, Lorg/threeten/bp/LocalTime;->withSecond(I)Lorg/threeten/bp/LocalTime;

    move-result-object v0

    iget-object v1, p0, Lorg/threeten/bp/OffsetTime;->offset:Lorg/threeten/bp/ZoneOffset;

    invoke-direct {p0, v0, v1}, Lorg/threeten/bp/OffsetTime;->with(Lorg/threeten/bp/LocalTime;Lorg/threeten/bp/ZoneOffset;)Lorg/threeten/bp/OffsetTime;

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
    .line 1306
    iget-object v0, p0, Lorg/threeten/bp/OffsetTime;->time:Lorg/threeten/bp/LocalTime;

    invoke-virtual {v0, p1}, Lorg/threeten/bp/LocalTime;->writeExternal(Ljava/io/DataOutput;)V

    .line 1307
    iget-object v0, p0, Lorg/threeten/bp/OffsetTime;->offset:Lorg/threeten/bp/ZoneOffset;

    invoke-virtual {v0, p1}, Lorg/threeten/bp/ZoneOffset;->writeExternal(Ljava/io/DataOutput;)V

    .line 1308
    return-void
.end method
