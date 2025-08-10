.class public final Lorg/threeten/bp/OffsetDateTime;
.super Lorg/threeten/bp/jdk8/DefaultInterfaceTemporal;
.source "OffsetDateTime.java"

# interfaces
.implements Lorg/threeten/bp/temporal/Temporal;
.implements Lorg/threeten/bp/temporal/TemporalAdjuster;
.implements Ljava/lang/Comparable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/threeten/bp/OffsetDateTime$3;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/threeten/bp/jdk8/DefaultInterfaceTemporal;",
        "Lorg/threeten/bp/temporal/Temporal;",
        "Lorg/threeten/bp/temporal/TemporalAdjuster;",
        "Ljava/lang/Comparable",
        "<",
        "Lorg/threeten/bp/OffsetDateTime;",
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
            "Lorg/threeten/bp/OffsetDateTime;",
            ">;"
        }
    .end annotation
.end field

.field private static final INSTANT_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lorg/threeten/bp/OffsetDateTime;",
            ">;"
        }
    .end annotation
.end field

.field public static final MAX:Lorg/threeten/bp/OffsetDateTime;

.field public static final MIN:Lorg/threeten/bp/OffsetDateTime;

.field private static final serialVersionUID:J = 0x1fbfbc5d57d80062L


# instance fields
.field private final dateTime:Lorg/threeten/bp/LocalDateTime;

.field private final offset:Lorg/threeten/bp/ZoneOffset;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 101
    sget-object v0, Lorg/threeten/bp/LocalDateTime;->MIN:Lorg/threeten/bp/LocalDateTime;

    sget-object v1, Lorg/threeten/bp/ZoneOffset;->MAX:Lorg/threeten/bp/ZoneOffset;

    invoke-virtual {v0, v1}, Lorg/threeten/bp/LocalDateTime;->atOffset(Lorg/threeten/bp/ZoneOffset;)Lorg/threeten/bp/OffsetDateTime;

    move-result-object v0

    sput-object v0, Lorg/threeten/bp/OffsetDateTime;->MIN:Lorg/threeten/bp/OffsetDateTime;

    .line 109
    sget-object v0, Lorg/threeten/bp/LocalDateTime;->MAX:Lorg/threeten/bp/LocalDateTime;

    sget-object v1, Lorg/threeten/bp/ZoneOffset;->MIN:Lorg/threeten/bp/ZoneOffset;

    invoke-virtual {v0, v1}, Lorg/threeten/bp/LocalDateTime;->atOffset(Lorg/threeten/bp/ZoneOffset;)Lorg/threeten/bp/OffsetDateTime;

    move-result-object v0

    sput-object v0, Lorg/threeten/bp/OffsetDateTime;->MAX:Lorg/threeten/bp/OffsetDateTime;

    .line 113
    new-instance v0, Lorg/threeten/bp/OffsetDateTime$1;

    invoke-direct {v0}, Lorg/threeten/bp/OffsetDateTime$1;-><init>()V

    sput-object v0, Lorg/threeten/bp/OffsetDateTime;->FROM:Lorg/threeten/bp/temporal/TemporalQuery;

    .line 136
    new-instance v0, Lorg/threeten/bp/OffsetDateTime$2;

    invoke-direct {v0}, Lorg/threeten/bp/OffsetDateTime$2;-><init>()V

    sput-object v0, Lorg/threeten/bp/OffsetDateTime;->INSTANT_COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method private constructor <init>(Lorg/threeten/bp/LocalDateTime;Lorg/threeten/bp/ZoneOffset;)V
    .locals 1
    .param p1, "dateTime"    # Lorg/threeten/bp/LocalDateTime;
    .param p2, "offset"    # Lorg/threeten/bp/ZoneOffset;

    .prologue
    .line 369
    invoke-direct {p0}, Lorg/threeten/bp/jdk8/DefaultInterfaceTemporal;-><init>()V

    .line 370
    const-string v0, "dateTime"

    invoke-static {p1, v0}, Lorg/threeten/bp/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/threeten/bp/LocalDateTime;

    iput-object v0, p0, Lorg/threeten/bp/OffsetDateTime;->dateTime:Lorg/threeten/bp/LocalDateTime;

    .line 371
    const-string v0, "offset"

    invoke-static {p2, v0}, Lorg/threeten/bp/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/threeten/bp/ZoneOffset;

    iput-object v0, p0, Lorg/threeten/bp/OffsetDateTime;->offset:Lorg/threeten/bp/ZoneOffset;

    .line 372
    return-void
.end method

.method public static from(Lorg/threeten/bp/temporal/TemporalAccessor;)Lorg/threeten/bp/OffsetDateTime;
    .locals 8
    .param p0, "temporal"    # Lorg/threeten/bp/temporal/TemporalAccessor;

    .prologue
    .line 313
    instance-of v5, p0, Lorg/threeten/bp/OffsetDateTime;

    if-eqz v5, :cond_0

    .line 314
    check-cast p0, Lorg/threeten/bp/OffsetDateTime;

    .line 323
    .end local p0    # "temporal":Lorg/threeten/bp/temporal/TemporalAccessor;
    .local v4, "offset":Lorg/threeten/bp/ZoneOffset;
    :goto_0
    return-object p0

    .line 317
    .end local v4    # "offset":Lorg/threeten/bp/ZoneOffset;
    .restart local p0    # "temporal":Lorg/threeten/bp/temporal/TemporalAccessor;
    :cond_0
    :try_start_0
    invoke-static {p0}, Lorg/threeten/bp/ZoneOffset;->from(Lorg/threeten/bp/temporal/TemporalAccessor;)Lorg/threeten/bp/ZoneOffset;
    :try_end_0
    .catch Lorg/threeten/bp/DateTimeException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v4

    .line 319
    .restart local v4    # "offset":Lorg/threeten/bp/ZoneOffset;
    :try_start_1
    invoke-static {p0}, Lorg/threeten/bp/LocalDateTime;->from(Lorg/threeten/bp/temporal/TemporalAccessor;)Lorg/threeten/bp/LocalDateTime;

    move-result-object v3

    .line 320
    .local v3, "ldt":Lorg/threeten/bp/LocalDateTime;
    invoke-static {v3, v4}, Lorg/threeten/bp/OffsetDateTime;->of(Lorg/threeten/bp/LocalDateTime;Lorg/threeten/bp/ZoneOffset;)Lorg/threeten/bp/OffsetDateTime;
    :try_end_1
    .catch Lorg/threeten/bp/DateTimeException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object p0

    goto :goto_0

    .line 321
    .end local v3    # "ldt":Lorg/threeten/bp/LocalDateTime;
    :catch_0
    move-exception v1

    .line 322
    .local v1, "ignore":Lorg/threeten/bp/DateTimeException;
    :try_start_2
    invoke-static {p0}, Lorg/threeten/bp/Instant;->from(Lorg/threeten/bp/temporal/TemporalAccessor;)Lorg/threeten/bp/Instant;

    move-result-object v2

    .line 323
    .local v2, "instant":Lorg/threeten/bp/Instant;
    invoke-static {v2, v4}, Lorg/threeten/bp/OffsetDateTime;->ofInstant(Lorg/threeten/bp/Instant;Lorg/threeten/bp/ZoneId;)Lorg/threeten/bp/OffsetDateTime;
    :try_end_2
    .catch Lorg/threeten/bp/DateTimeException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object p0

    goto :goto_0

    .line 325
    .end local v1    # "ignore":Lorg/threeten/bp/DateTimeException;
    .end local v2    # "instant":Lorg/threeten/bp/Instant;
    .end local v4    # "offset":Lorg/threeten/bp/ZoneOffset;
    :catch_1
    move-exception v0

    .line 326
    .local v0, "ex":Lorg/threeten/bp/DateTimeException;
    new-instance v5, Lorg/threeten/bp/DateTimeException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to obtain OffsetDateTime from TemporalAccessor: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", type "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/threeten/bp/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method public static now()Lorg/threeten/bp/OffsetDateTime;
    .locals 1

    .prologue
    .line 175
    invoke-static {}, Lorg/threeten/bp/Clock;->systemDefaultZone()Lorg/threeten/bp/Clock;

    move-result-object v0

    invoke-static {v0}, Lorg/threeten/bp/OffsetDateTime;->now(Lorg/threeten/bp/Clock;)Lorg/threeten/bp/OffsetDateTime;

    move-result-object v0

    return-object v0
.end method

.method public static now(Lorg/threeten/bp/Clock;)Lorg/threeten/bp/OffsetDateTime;
    .locals 2
    .param p0, "clock"    # Lorg/threeten/bp/Clock;

    .prologue
    .line 208
    const-string v1, "clock"

    invoke-static {p0, v1}, Lorg/threeten/bp/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 209
    invoke-virtual {p0}, Lorg/threeten/bp/Clock;->instant()Lorg/threeten/bp/Instant;

    move-result-object v0

    .line 210
    .local v0, "now":Lorg/threeten/bp/Instant;
    invoke-virtual {p0}, Lorg/threeten/bp/Clock;->getZone()Lorg/threeten/bp/ZoneId;

    move-result-object v1

    invoke-virtual {v1}, Lorg/threeten/bp/ZoneId;->getRules()Lorg/threeten/bp/zone/ZoneRules;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/threeten/bp/zone/ZoneRules;->getOffset(Lorg/threeten/bp/Instant;)Lorg/threeten/bp/ZoneOffset;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/threeten/bp/OffsetDateTime;->ofInstant(Lorg/threeten/bp/Instant;Lorg/threeten/bp/ZoneId;)Lorg/threeten/bp/OffsetDateTime;

    move-result-object v1

    return-object v1
.end method

.method public static now(Lorg/threeten/bp/ZoneId;)Lorg/threeten/bp/OffsetDateTime;
    .locals 1
    .param p0, "zone"    # Lorg/threeten/bp/ZoneId;

    .prologue
    .line 192
    invoke-static {p0}, Lorg/threeten/bp/Clock;->system(Lorg/threeten/bp/ZoneId;)Lorg/threeten/bp/Clock;

    move-result-object v0

    invoke-static {v0}, Lorg/threeten/bp/OffsetDateTime;->now(Lorg/threeten/bp/Clock;)Lorg/threeten/bp/OffsetDateTime;

    move-result-object v0

    return-object v0
.end method

.method public static of(IIIIIIILorg/threeten/bp/ZoneOffset;)Lorg/threeten/bp/OffsetDateTime;
    .locals 2
    .param p0, "year"    # I
    .param p1, "month"    # I
    .param p2, "dayOfMonth"    # I
    .param p3, "hour"    # I
    .param p4, "minute"    # I
    .param p5, "second"    # I
    .param p6, "nanoOfSecond"    # I
    .param p7, "offset"    # Lorg/threeten/bp/ZoneOffset;

    .prologue
    .line 269
    invoke-static/range {p0 .. p6}, Lorg/threeten/bp/LocalDateTime;->of(IIIIIII)Lorg/threeten/bp/LocalDateTime;

    move-result-object v0

    .line 270
    .local v0, "dt":Lorg/threeten/bp/LocalDateTime;
    new-instance v1, Lorg/threeten/bp/OffsetDateTime;

    invoke-direct {v1, v0, p7}, Lorg/threeten/bp/OffsetDateTime;-><init>(Lorg/threeten/bp/LocalDateTime;Lorg/threeten/bp/ZoneOffset;)V

    return-object v1
.end method

.method public static of(Lorg/threeten/bp/LocalDate;Lorg/threeten/bp/LocalTime;Lorg/threeten/bp/ZoneOffset;)Lorg/threeten/bp/OffsetDateTime;
    .locals 2
    .param p0, "date"    # Lorg/threeten/bp/LocalDate;
    .param p1, "time"    # Lorg/threeten/bp/LocalTime;
    .param p2, "offset"    # Lorg/threeten/bp/ZoneOffset;

    .prologue
    .line 225
    invoke-static {p0, p1}, Lorg/threeten/bp/LocalDateTime;->of(Lorg/threeten/bp/LocalDate;Lorg/threeten/bp/LocalTime;)Lorg/threeten/bp/LocalDateTime;

    move-result-object v0

    .line 226
    .local v0, "dt":Lorg/threeten/bp/LocalDateTime;
    new-instance v1, Lorg/threeten/bp/OffsetDateTime;

    invoke-direct {v1, v0, p2}, Lorg/threeten/bp/OffsetDateTime;-><init>(Lorg/threeten/bp/LocalDateTime;Lorg/threeten/bp/ZoneOffset;)V

    return-object v1
.end method

.method public static of(Lorg/threeten/bp/LocalDateTime;Lorg/threeten/bp/ZoneOffset;)Lorg/threeten/bp/OffsetDateTime;
    .locals 1
    .param p0, "dateTime"    # Lorg/threeten/bp/LocalDateTime;
    .param p1, "offset"    # Lorg/threeten/bp/ZoneOffset;

    .prologue
    .line 239
    new-instance v0, Lorg/threeten/bp/OffsetDateTime;

    invoke-direct {v0, p0, p1}, Lorg/threeten/bp/OffsetDateTime;-><init>(Lorg/threeten/bp/LocalDateTime;Lorg/threeten/bp/ZoneOffset;)V

    return-object v0
.end method

.method public static ofInstant(Lorg/threeten/bp/Instant;Lorg/threeten/bp/ZoneId;)Lorg/threeten/bp/OffsetDateTime;
    .locals 6
    .param p0, "instant"    # Lorg/threeten/bp/Instant;
    .param p1, "zone"    # Lorg/threeten/bp/ZoneId;

    .prologue
    .line 287
    const-string v3, "instant"

    invoke-static {p0, v3}, Lorg/threeten/bp/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 288
    const-string v3, "zone"

    invoke-static {p1, v3}, Lorg/threeten/bp/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 289
    invoke-virtual {p1}, Lorg/threeten/bp/ZoneId;->getRules()Lorg/threeten/bp/zone/ZoneRules;

    move-result-object v2

    .line 290
    .local v2, "rules":Lorg/threeten/bp/zone/ZoneRules;
    invoke-virtual {v2, p0}, Lorg/threeten/bp/zone/ZoneRules;->getOffset(Lorg/threeten/bp/Instant;)Lorg/threeten/bp/ZoneOffset;

    move-result-object v1

    .line 291
    .local v1, "offset":Lorg/threeten/bp/ZoneOffset;
    invoke-virtual {p0}, Lorg/threeten/bp/Instant;->getEpochSecond()J

    move-result-wide v4

    invoke-virtual {p0}, Lorg/threeten/bp/Instant;->getNano()I

    move-result v3

    invoke-static {v4, v5, v3, v1}, Lorg/threeten/bp/LocalDateTime;->ofEpochSecond(JILorg/threeten/bp/ZoneOffset;)Lorg/threeten/bp/LocalDateTime;

    move-result-object v0

    .line 292
    .local v0, "ldt":Lorg/threeten/bp/LocalDateTime;
    new-instance v3, Lorg/threeten/bp/OffsetDateTime;

    invoke-direct {v3, v0, v1}, Lorg/threeten/bp/OffsetDateTime;-><init>(Lorg/threeten/bp/LocalDateTime;Lorg/threeten/bp/ZoneOffset;)V

    return-object v3
.end method

.method public static parse(Ljava/lang/CharSequence;)Lorg/threeten/bp/OffsetDateTime;
    .locals 1
    .param p0, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 344
    sget-object v0, Lorg/threeten/bp/format/DateTimeFormatter;->ISO_OFFSET_DATE_TIME:Lorg/threeten/bp/format/DateTimeFormatter;

    invoke-static {p0, v0}, Lorg/threeten/bp/OffsetDateTime;->parse(Ljava/lang/CharSequence;Lorg/threeten/bp/format/DateTimeFormatter;)Lorg/threeten/bp/OffsetDateTime;

    move-result-object v0

    return-object v0
.end method

.method public static parse(Ljava/lang/CharSequence;Lorg/threeten/bp/format/DateTimeFormatter;)Lorg/threeten/bp/OffsetDateTime;
    .locals 1
    .param p0, "text"    # Ljava/lang/CharSequence;
    .param p1, "formatter"    # Lorg/threeten/bp/format/DateTimeFormatter;

    .prologue
    .line 358
    const-string v0, "formatter"

    invoke-static {p1, v0}, Lorg/threeten/bp/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 359
    sget-object v0, Lorg/threeten/bp/OffsetDateTime;->FROM:Lorg/threeten/bp/temporal/TemporalQuery;

    invoke-virtual {p1, p0, v0}, Lorg/threeten/bp/format/DateTimeFormatter;->parse(Ljava/lang/CharSequence;Lorg/threeten/bp/temporal/TemporalQuery;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/threeten/bp/OffsetDateTime;

    return-object v0
.end method

.method static readExternal(Ljava/io/DataInput;)Lorg/threeten/bp/OffsetDateTime;
    .locals 3
    .param p0, "in"    # Ljava/io/DataInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1814
    invoke-static {p0}, Lorg/threeten/bp/LocalDateTime;->readExternal(Ljava/io/DataInput;)Lorg/threeten/bp/LocalDateTime;

    move-result-object v0

    .line 1815
    .local v0, "dateTime":Lorg/threeten/bp/LocalDateTime;
    invoke-static {p0}, Lorg/threeten/bp/ZoneOffset;->readExternal(Ljava/io/DataInput;)Lorg/threeten/bp/ZoneOffset;

    move-result-object v1

    .line 1816
    .local v1, "offset":Lorg/threeten/bp/ZoneOffset;
    invoke-static {v0, v1}, Lorg/threeten/bp/OffsetDateTime;->of(Lorg/threeten/bp/LocalDateTime;Lorg/threeten/bp/ZoneOffset;)Lorg/threeten/bp/OffsetDateTime;

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
    .line 1805
    new-instance v0, Ljava/io/InvalidObjectException;

    const-string v1, "Deserialization via serialization delegate"

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static timeLineOrder()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator",
            "<",
            "Lorg/threeten/bp/OffsetDateTime;",
            ">;"
        }
    .end annotation

    .prologue
    .line 134
    sget-object v0, Lorg/threeten/bp/OffsetDateTime;->INSTANT_COMPARATOR:Ljava/util/Comparator;

    return-object v0
.end method

.method private with(Lorg/threeten/bp/LocalDateTime;Lorg/threeten/bp/ZoneOffset;)Lorg/threeten/bp/OffsetDateTime;
    .locals 1
    .param p1, "dateTime"    # Lorg/threeten/bp/LocalDateTime;
    .param p2, "offset"    # Lorg/threeten/bp/ZoneOffset;

    .prologue
    .line 381
    iget-object v0, p0, Lorg/threeten/bp/OffsetDateTime;->dateTime:Lorg/threeten/bp/LocalDateTime;

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lorg/threeten/bp/OffsetDateTime;->offset:Lorg/threeten/bp/ZoneOffset;

    invoke-virtual {v0, p2}, Lorg/threeten/bp/ZoneOffset;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 384
    .end local p0    # "this":Lorg/threeten/bp/OffsetDateTime;
    :goto_0
    return-object p0

    .restart local p0    # "this":Lorg/threeten/bp/OffsetDateTime;
    :cond_0
    new-instance p0, Lorg/threeten/bp/OffsetDateTime;

    .end local p0    # "this":Lorg/threeten/bp/OffsetDateTime;
    invoke-direct {p0, p1, p2}, Lorg/threeten/bp/OffsetDateTime;-><init>(Lorg/threeten/bp/LocalDateTime;Lorg/threeten/bp/ZoneOffset;)V

    goto :goto_0
.end method

.method private writeReplace()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 1796
    new-instance v0, Lorg/threeten/bp/Ser;

    const/16 v1, 0x45

    invoke-direct {v0, v1, p0}, Lorg/threeten/bp/Ser;-><init>(BLjava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public adjustInto(Lorg/threeten/bp/temporal/Temporal;)Lorg/threeten/bp/temporal/Temporal;
    .locals 4
    .param p1, "temporal"    # Lorg/threeten/bp/temporal/Temporal;

    .prologue
    .line 1437
    sget-object v0, Lorg/threeten/bp/temporal/ChronoField;->EPOCH_DAY:Lorg/threeten/bp/temporal/ChronoField;

    invoke-virtual {p0}, Lorg/threeten/bp/OffsetDateTime;->toLocalDate()Lorg/threeten/bp/LocalDate;

    move-result-object v1

    invoke-virtual {v1}, Lorg/threeten/bp/LocalDate;->toEpochDay()J

    move-result-wide v2

    invoke-interface {p1, v0, v2, v3}, Lorg/threeten/bp/temporal/Temporal;->with(Lorg/threeten/bp/temporal/TemporalField;J)Lorg/threeten/bp/temporal/Temporal;

    move-result-object v0

    sget-object v1, Lorg/threeten/bp/temporal/ChronoField;->NANO_OF_DAY:Lorg/threeten/bp/temporal/ChronoField;

    invoke-virtual {p0}, Lorg/threeten/bp/OffsetDateTime;->toLocalTime()Lorg/threeten/bp/LocalTime;

    move-result-object v2

    invoke-virtual {v2}, Lorg/threeten/bp/LocalTime;->toNanoOfDay()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Lorg/threeten/bp/temporal/Temporal;->with(Lorg/threeten/bp/temporal/TemporalField;J)Lorg/threeten/bp/temporal/Temporal;

    move-result-object v0

    sget-object v1, Lorg/threeten/bp/temporal/ChronoField;->OFFSET_SECONDS:Lorg/threeten/bp/temporal/ChronoField;

    invoke-virtual {p0}, Lorg/threeten/bp/OffsetDateTime;->getOffset()Lorg/threeten/bp/ZoneOffset;

    move-result-object v2

    invoke-virtual {v2}, Lorg/threeten/bp/ZoneOffset;->getTotalSeconds()I

    move-result v2

    int-to-long v2, v2

    invoke-interface {v0, v1, v2, v3}, Lorg/threeten/bp/temporal/Temporal;->with(Lorg/threeten/bp/temporal/TemporalField;J)Lorg/threeten/bp/temporal/Temporal;

    move-result-object v0

    return-object v0
.end method

.method public atZoneSameInstant(Lorg/threeten/bp/ZoneId;)Lorg/threeten/bp/ZonedDateTime;
    .locals 2
    .param p1, "zone"    # Lorg/threeten/bp/ZoneId;

    .prologue
    .line 1518
    iget-object v0, p0, Lorg/threeten/bp/OffsetDateTime;->dateTime:Lorg/threeten/bp/LocalDateTime;

    iget-object v1, p0, Lorg/threeten/bp/OffsetDateTime;->offset:Lorg/threeten/bp/ZoneOffset;

    invoke-static {v0, v1, p1}, Lorg/threeten/bp/ZonedDateTime;->ofInstant(Lorg/threeten/bp/LocalDateTime;Lorg/threeten/bp/ZoneOffset;Lorg/threeten/bp/ZoneId;)Lorg/threeten/bp/ZonedDateTime;

    move-result-object v0

    return-object v0
.end method

.method public atZoneSimilarLocal(Lorg/threeten/bp/ZoneId;)Lorg/threeten/bp/ZonedDateTime;
    .locals 2
    .param p1, "zone"    # Lorg/threeten/bp/ZoneId;

    .prologue
    .line 1546
    iget-object v0, p0, Lorg/threeten/bp/OffsetDateTime;->dateTime:Lorg/threeten/bp/LocalDateTime;

    iget-object v1, p0, Lorg/threeten/bp/OffsetDateTime;->offset:Lorg/threeten/bp/ZoneOffset;

    invoke-static {v0, p1, v1}, Lorg/threeten/bp/ZonedDateTime;->ofLocal(Lorg/threeten/bp/LocalDateTime;Lorg/threeten/bp/ZoneId;Lorg/threeten/bp/ZoneOffset;)Lorg/threeten/bp/ZonedDateTime;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 90
    check-cast p1, Lorg/threeten/bp/OffsetDateTime;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/threeten/bp/OffsetDateTime;->compareTo(Lorg/threeten/bp/OffsetDateTime;)I

    move-result v0

    return v0
.end method

.method public compareTo(Lorg/threeten/bp/OffsetDateTime;)I
    .locals 6
    .param p1, "other"    # Lorg/threeten/bp/OffsetDateTime;

    .prologue
    .line 1661
    invoke-virtual {p0}, Lorg/threeten/bp/OffsetDateTime;->getOffset()Lorg/threeten/bp/ZoneOffset;

    move-result-object v1

    invoke-virtual {p1}, Lorg/threeten/bp/OffsetDateTime;->getOffset()Lorg/threeten/bp/ZoneOffset;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/threeten/bp/ZoneOffset;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1662
    invoke-virtual {p0}, Lorg/threeten/bp/OffsetDateTime;->toLocalDateTime()Lorg/threeten/bp/LocalDateTime;

    move-result-object v1

    invoke-virtual {p1}, Lorg/threeten/bp/OffsetDateTime;->toLocalDateTime()Lorg/threeten/bp/LocalDateTime;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/threeten/bp/LocalDateTime;->compareTo(Lorg/threeten/bp/chrono/ChronoLocalDateTime;)I

    move-result v0

    .line 1671
    :cond_0
    :goto_0
    return v0

    .line 1664
    :cond_1
    invoke-virtual {p0}, Lorg/threeten/bp/OffsetDateTime;->toEpochSecond()J

    move-result-wide v2

    invoke-virtual {p1}, Lorg/threeten/bp/OffsetDateTime;->toEpochSecond()J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Lorg/threeten/bp/jdk8/Jdk8Methods;->compareLongs(JJ)I

    move-result v0

    .line 1665
    .local v0, "cmp":I
    if-nez v0, :cond_0

    .line 1666
    invoke-virtual {p0}, Lorg/threeten/bp/OffsetDateTime;->toLocalTime()Lorg/threeten/bp/LocalTime;

    move-result-object v1

    invoke-virtual {v1}, Lorg/threeten/bp/LocalTime;->getNano()I

    move-result v1

    invoke-virtual {p1}, Lorg/threeten/bp/OffsetDateTime;->toLocalTime()Lorg/threeten/bp/LocalTime;

    move-result-object v2

    invoke-virtual {v2}, Lorg/threeten/bp/LocalTime;->getNano()I

    move-result v2

    sub-int v0, v1, v2

    .line 1667
    if-nez v0, :cond_0

    .line 1668
    invoke-virtual {p0}, Lorg/threeten/bp/OffsetDateTime;->toLocalDateTime()Lorg/threeten/bp/LocalDateTime;

    move-result-object v1

    invoke-virtual {p1}, Lorg/threeten/bp/OffsetDateTime;->toLocalDateTime()Lorg/threeten/bp/LocalDateTime;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/threeten/bp/LocalDateTime;->compareTo(Lorg/threeten/bp/chrono/ChronoLocalDateTime;)I

    move-result v0

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1737
    if-ne p0, p1, :cond_1

    .line 1744
    :cond_0
    :goto_0
    return v1

    .line 1740
    :cond_1
    instance-of v3, p1, Lorg/threeten/bp/OffsetDateTime;

    if-eqz v3, :cond_3

    move-object v0, p1

    .line 1741
    check-cast v0, Lorg/threeten/bp/OffsetDateTime;

    .line 1742
    .local v0, "other":Lorg/threeten/bp/OffsetDateTime;
    iget-object v3, p0, Lorg/threeten/bp/OffsetDateTime;->dateTime:Lorg/threeten/bp/LocalDateTime;

    iget-object v4, v0, Lorg/threeten/bp/OffsetDateTime;->dateTime:Lorg/threeten/bp/LocalDateTime;

    invoke-virtual {v3, v4}, Lorg/threeten/bp/LocalDateTime;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lorg/threeten/bp/OffsetDateTime;->offset:Lorg/threeten/bp/ZoneOffset;

    iget-object v4, v0, Lorg/threeten/bp/OffsetDateTime;->offset:Lorg/threeten/bp/ZoneOffset;

    invoke-virtual {v3, v4}, Lorg/threeten/bp/ZoneOffset;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_2
    move v1, v2

    goto :goto_0

    .end local v0    # "other":Lorg/threeten/bp/OffsetDateTime;
    :cond_3
    move v1, v2

    .line 1744
    goto :goto_0
.end method

.method public format(Lorg/threeten/bp/format/DateTimeFormatter;)Ljava/lang/String;
    .locals 1
    .param p1, "formatter"    # Lorg/threeten/bp/format/DateTimeFormatter;

    .prologue
    .line 1790
    const-string v0, "formatter"

    invoke-static {p1, v0}, Lorg/threeten/bp/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1791
    invoke-virtual {p1, p0}, Lorg/threeten/bp/format/DateTimeFormatter;->format(Lorg/threeten/bp/temporal/TemporalAccessor;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public get(Lorg/threeten/bp/temporal/TemporalField;)I
    .locals 3
    .param p1, "field"    # Lorg/threeten/bp/temporal/TemporalField;

    .prologue
    .line 512
    instance-of v0, p1, Lorg/threeten/bp/temporal/ChronoField;

    if-eqz v0, :cond_0

    .line 513
    sget-object v1, Lorg/threeten/bp/OffsetDateTime$3;->$SwitchMap$org$threeten$bp$temporal$ChronoField:[I

    move-object v0, p1

    check-cast v0, Lorg/threeten/bp/temporal/ChronoField;

    invoke-virtual {v0}, Lorg/threeten/bp/temporal/ChronoField;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 517
    iget-object v0, p0, Lorg/threeten/bp/OffsetDateTime;->dateTime:Lorg/threeten/bp/LocalDateTime;

    invoke-virtual {v0, p1}, Lorg/threeten/bp/LocalDateTime;->get(Lorg/threeten/bp/temporal/TemporalField;)I

    move-result v0

    .line 519
    :goto_0
    return v0

    .line 514
    :pswitch_0
    new-instance v0, Lorg/threeten/bp/DateTimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Field too large for an int: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/threeten/bp/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 515
    :pswitch_1
    invoke-virtual {p0}, Lorg/threeten/bp/OffsetDateTime;->getOffset()Lorg/threeten/bp/ZoneOffset;

    move-result-object v0

    invoke-virtual {v0}, Lorg/threeten/bp/ZoneOffset;->getTotalSeconds()I

    move-result v0

    goto :goto_0

    .line 519
    :cond_0
    invoke-super {p0, p1}, Lorg/threeten/bp/jdk8/DefaultInterfaceTemporal;->get(Lorg/threeten/bp/temporal/TemporalField;)I

    move-result v0

    goto :goto_0

    .line 513
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getDayOfMonth()I
    .locals 1

    .prologue
    .line 669
    iget-object v0, p0, Lorg/threeten/bp/OffsetDateTime;->dateTime:Lorg/threeten/bp/LocalDateTime;

    invoke-virtual {v0}, Lorg/threeten/bp/LocalDateTime;->getDayOfMonth()I

    move-result v0

    return v0
.end method

.method public getDayOfWeek()Lorg/threeten/bp/DayOfWeek;
    .locals 1

    .prologue
    .line 697
    iget-object v0, p0, Lorg/threeten/bp/OffsetDateTime;->dateTime:Lorg/threeten/bp/LocalDateTime;

    invoke-virtual {v0}, Lorg/threeten/bp/LocalDateTime;->getDayOfWeek()Lorg/threeten/bp/DayOfWeek;

    move-result-object v0

    return-object v0
.end method

.method public getDayOfYear()I
    .locals 1

    .prologue
    .line 680
    iget-object v0, p0, Lorg/threeten/bp/OffsetDateTime;->dateTime:Lorg/threeten/bp/LocalDateTime;

    invoke-virtual {v0}, Lorg/threeten/bp/LocalDateTime;->getDayOfYear()I

    move-result v0

    return v0
.end method

.method public getHour()I
    .locals 1

    .prologue
    .line 707
    iget-object v0, p0, Lorg/threeten/bp/OffsetDateTime;->dateTime:Lorg/threeten/bp/LocalDateTime;

    invoke-virtual {v0}, Lorg/threeten/bp/LocalDateTime;->getHour()I

    move-result v0

    return v0
.end method

.method public getLong(Lorg/threeten/bp/temporal/TemporalField;)J
    .locals 2
    .param p1, "field"    # Lorg/threeten/bp/temporal/TemporalField;

    .prologue
    .line 546
    instance-of v0, p1, Lorg/threeten/bp/temporal/ChronoField;

    if-eqz v0, :cond_0

    .line 547
    sget-object v1, Lorg/threeten/bp/OffsetDateTime$3;->$SwitchMap$org$threeten$bp$temporal$ChronoField:[I

    move-object v0, p1

    check-cast v0, Lorg/threeten/bp/temporal/ChronoField;

    invoke-virtual {v0}, Lorg/threeten/bp/temporal/ChronoField;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 551
    iget-object v0, p0, Lorg/threeten/bp/OffsetDateTime;->dateTime:Lorg/threeten/bp/LocalDateTime;

    invoke-virtual {v0, p1}, Lorg/threeten/bp/LocalDateTime;->getLong(Lorg/threeten/bp/temporal/TemporalField;)J

    move-result-wide v0

    .line 553
    :goto_0
    return-wide v0

    .line 548
    :pswitch_0
    invoke-virtual {p0}, Lorg/threeten/bp/OffsetDateTime;->toEpochSecond()J

    move-result-wide v0

    goto :goto_0

    .line 549
    :pswitch_1
    invoke-virtual {p0}, Lorg/threeten/bp/OffsetDateTime;->getOffset()Lorg/threeten/bp/ZoneOffset;

    move-result-object v0

    invoke-virtual {v0}, Lorg/threeten/bp/ZoneOffset;->getTotalSeconds()I

    move-result v0

    int-to-long v0, v0

    goto :goto_0

    .line 553
    :cond_0
    invoke-interface {p1, p0}, Lorg/threeten/bp/temporal/TemporalField;->getFrom(Lorg/threeten/bp/temporal/TemporalAccessor;)J

    move-result-wide v0

    goto :goto_0

    .line 547
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getMinute()I
    .locals 1

    .prologue
    .line 716
    iget-object v0, p0, Lorg/threeten/bp/OffsetDateTime;->dateTime:Lorg/threeten/bp/LocalDateTime;

    invoke-virtual {v0}, Lorg/threeten/bp/LocalDateTime;->getMinute()I

    move-result v0

    return v0
.end method

.method public getMonth()Lorg/threeten/bp/Month;
    .locals 1

    .prologue
    .line 658
    iget-object v0, p0, Lorg/threeten/bp/OffsetDateTime;->dateTime:Lorg/threeten/bp/LocalDateTime;

    invoke-virtual {v0}, Lorg/threeten/bp/LocalDateTime;->getMonth()Lorg/threeten/bp/Month;

    move-result-object v0

    return-object v0
.end method

.method public getMonthValue()I
    .locals 1

    .prologue
    .line 643
    iget-object v0, p0, Lorg/threeten/bp/OffsetDateTime;->dateTime:Lorg/threeten/bp/LocalDateTime;

    invoke-virtual {v0}, Lorg/threeten/bp/LocalDateTime;->getMonthValue()I

    move-result v0

    return v0
.end method

.method public getNano()I
    .locals 1

    .prologue
    .line 734
    iget-object v0, p0, Lorg/threeten/bp/OffsetDateTime;->dateTime:Lorg/threeten/bp/LocalDateTime;

    invoke-virtual {v0}, Lorg/threeten/bp/LocalDateTime;->getNano()I

    move-result v0

    return v0
.end method

.method public getOffset()Lorg/threeten/bp/ZoneOffset;
    .locals 1

    .prologue
    .line 565
    iget-object v0, p0, Lorg/threeten/bp/OffsetDateTime;->offset:Lorg/threeten/bp/ZoneOffset;

    return-object v0
.end method

.method public getSecond()I
    .locals 1

    .prologue
    .line 725
    iget-object v0, p0, Lorg/threeten/bp/OffsetDateTime;->dateTime:Lorg/threeten/bp/LocalDateTime;

    invoke-virtual {v0}, Lorg/threeten/bp/LocalDateTime;->getSecond()I

    move-result v0

    return v0
.end method

.method public getYear()I
    .locals 1

    .prologue
    .line 629
    iget-object v0, p0, Lorg/threeten/bp/OffsetDateTime;->dateTime:Lorg/threeten/bp/LocalDateTime;

    invoke-virtual {v0}, Lorg/threeten/bp/LocalDateTime;->getYear()I

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 1754
    iget-object v0, p0, Lorg/threeten/bp/OffsetDateTime;->dateTime:Lorg/threeten/bp/LocalDateTime;

    invoke-virtual {v0}, Lorg/threeten/bp/LocalDateTime;->hashCode()I

    move-result v0

    iget-object v1, p0, Lorg/threeten/bp/OffsetDateTime;->offset:Lorg/threeten/bp/ZoneOffset;

    invoke-virtual {v1}, Lorg/threeten/bp/ZoneOffset;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public isAfter(Lorg/threeten/bp/OffsetDateTime;)Z
    .locals 6
    .param p1, "other"    # Lorg/threeten/bp/OffsetDateTime;

    .prologue
    .line 1686
    invoke-virtual {p0}, Lorg/threeten/bp/OffsetDateTime;->toEpochSecond()J

    move-result-wide v2

    .line 1687
    .local v2, "thisEpochSec":J
    invoke-virtual {p1}, Lorg/threeten/bp/OffsetDateTime;->toEpochSecond()J

    move-result-wide v0

    .line 1688
    .local v0, "otherEpochSec":J
    cmp-long v4, v2, v0

    if-gtz v4, :cond_0

    cmp-long v4, v2, v0

    if-nez v4, :cond_1

    invoke-virtual {p0}, Lorg/threeten/bp/OffsetDateTime;->toLocalTime()Lorg/threeten/bp/LocalTime;

    move-result-object v4

    invoke-virtual {v4}, Lorg/threeten/bp/LocalTime;->getNano()I

    move-result v4

    invoke-virtual {p1}, Lorg/threeten/bp/OffsetDateTime;->toLocalTime()Lorg/threeten/bp/LocalTime;

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

.method public isBefore(Lorg/threeten/bp/OffsetDateTime;)Z
    .locals 6
    .param p1, "other"    # Lorg/threeten/bp/OffsetDateTime;

    .prologue
    .line 1703
    invoke-virtual {p0}, Lorg/threeten/bp/OffsetDateTime;->toEpochSecond()J

    move-result-wide v2

    .line 1704
    .local v2, "thisEpochSec":J
    invoke-virtual {p1}, Lorg/threeten/bp/OffsetDateTime;->toEpochSecond()J

    move-result-wide v0

    .line 1705
    .local v0, "otherEpochSec":J
    cmp-long v4, v2, v0

    if-ltz v4, :cond_0

    cmp-long v4, v2, v0

    if-nez v4, :cond_1

    invoke-virtual {p0}, Lorg/threeten/bp/OffsetDateTime;->toLocalTime()Lorg/threeten/bp/LocalTime;

    move-result-object v4

    invoke-virtual {v4}, Lorg/threeten/bp/LocalTime;->getNano()I

    move-result v4

    invoke-virtual {p1}, Lorg/threeten/bp/OffsetDateTime;->toLocalTime()Lorg/threeten/bp/LocalTime;

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

.method public isEqual(Lorg/threeten/bp/OffsetDateTime;)Z
    .locals 4
    .param p1, "other"    # Lorg/threeten/bp/OffsetDateTime;

    .prologue
    .line 1720
    invoke-virtual {p0}, Lorg/threeten/bp/OffsetDateTime;->toEpochSecond()J

    move-result-wide v0

    invoke-virtual {p1}, Lorg/threeten/bp/OffsetDateTime;->toEpochSecond()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/threeten/bp/OffsetDateTime;->toLocalTime()Lorg/threeten/bp/LocalTime;

    move-result-object v0

    invoke-virtual {v0}, Lorg/threeten/bp/LocalTime;->getNano()I

    move-result v0

    invoke-virtual {p1}, Lorg/threeten/bp/OffsetDateTime;->toLocalTime()Lorg/threeten/bp/LocalTime;

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

.method public isSupported(Lorg/threeten/bp/temporal/TemporalField;)Z
    .locals 1
    .param p1, "field"    # Lorg/threeten/bp/temporal/TemporalField;

    .prologue
    .line 441
    instance-of v0, p1, Lorg/threeten/bp/temporal/ChronoField;

    if-nez v0, :cond_0

    if-eqz p1, :cond_1

    invoke-interface {p1, p0}, Lorg/threeten/bp/temporal/TemporalField;->isSupportedBy(Lorg/threeten/bp/temporal/TemporalAccessor;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSupported(Lorg/threeten/bp/temporal/TemporalUnit;)Z
    .locals 3
    .param p1, "unit"    # Lorg/threeten/bp/temporal/TemporalUnit;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 446
    instance-of v2, p1, Lorg/threeten/bp/temporal/ChronoUnit;

    if-eqz v2, :cond_2

    .line 447
    invoke-interface {p1}, Lorg/threeten/bp/temporal/TemporalUnit;->isDateBased()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {p1}, Lorg/threeten/bp/temporal/TemporalUnit;->isTimeBased()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    move v0, v1

    .line 449
    :cond_1
    :goto_0
    return v0

    :cond_2
    if-eqz p1, :cond_3

    invoke-interface {p1, p0}, Lorg/threeten/bp/temporal/TemporalUnit;->isSupportedBy(Lorg/threeten/bp/temporal/Temporal;)Z

    move-result v2

    if-eqz v2, :cond_3

    :goto_1
    move v0, v1

    goto :goto_0

    :cond_3
    move v1, v0

    goto :goto_1
.end method

.method public minus(JLorg/threeten/bp/temporal/TemporalUnit;)Lorg/threeten/bp/OffsetDateTime;
    .locals 5
    .param p1, "amountToSubtract"    # J
    .param p3, "unit"    # Lorg/threeten/bp/temporal/TemporalUnit;

    .prologue
    .line 1229
    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1, p3}, Lorg/threeten/bp/OffsetDateTime;->plus(JLorg/threeten/bp/temporal/TemporalUnit;)Lorg/threeten/bp/OffsetDateTime;

    move-result-object v0

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v2, v3, p3}, Lorg/threeten/bp/OffsetDateTime;->plus(JLorg/threeten/bp/temporal/TemporalUnit;)Lorg/threeten/bp/OffsetDateTime;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    neg-long v0, p1

    invoke-virtual {p0, v0, v1, p3}, Lorg/threeten/bp/OffsetDateTime;->plus(JLorg/threeten/bp/temporal/TemporalUnit;)Lorg/threeten/bp/OffsetDateTime;

    move-result-object v0

    goto :goto_0
.end method

.method public minus(Lorg/threeten/bp/temporal/TemporalAmount;)Lorg/threeten/bp/OffsetDateTime;
    .locals 1
    .param p1, "amount"    # Lorg/threeten/bp/temporal/TemporalAmount;

    .prologue
    .line 1209
    invoke-interface {p1, p0}, Lorg/threeten/bp/temporal/TemporalAmount;->subtractFrom(Lorg/threeten/bp/temporal/Temporal;)Lorg/threeten/bp/temporal/Temporal;

    move-result-object v0

    check-cast v0, Lorg/threeten/bp/OffsetDateTime;

    return-object v0
.end method

.method public bridge synthetic minus(JLorg/threeten/bp/temporal/TemporalUnit;)Lorg/threeten/bp/temporal/Temporal;
    .locals 1
    .param p1, "x0"    # J
    .param p3, "x1"    # Lorg/threeten/bp/temporal/TemporalUnit;

    .prologue
    .line 90
    invoke-virtual {p0, p1, p2, p3}, Lorg/threeten/bp/OffsetDateTime;->minus(JLorg/threeten/bp/temporal/TemporalUnit;)Lorg/threeten/bp/OffsetDateTime;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic minus(Lorg/threeten/bp/temporal/TemporalAmount;)Lorg/threeten/bp/temporal/Temporal;
    .locals 1
    .param p1, "x0"    # Lorg/threeten/bp/temporal/TemporalAmount;

    .prologue
    .line 90
    invoke-virtual {p0, p1}, Lorg/threeten/bp/OffsetDateTime;->minus(Lorg/threeten/bp/temporal/TemporalAmount;)Lorg/threeten/bp/OffsetDateTime;

    move-result-object v0

    return-object v0
.end method

.method public minusDays(J)Lorg/threeten/bp/OffsetDateTime;
    .locals 5
    .param p1, "days"    # J

    .prologue
    .line 1316
    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Lorg/threeten/bp/OffsetDateTime;->plusDays(J)Lorg/threeten/bp/OffsetDateTime;

    move-result-object v0

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v2, v3}, Lorg/threeten/bp/OffsetDateTime;->plusDays(J)Lorg/threeten/bp/OffsetDateTime;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    neg-long v0, p1

    invoke-virtual {p0, v0, v1}, Lorg/threeten/bp/OffsetDateTime;->plusDays(J)Lorg/threeten/bp/OffsetDateTime;

    move-result-object v0

    goto :goto_0
.end method

.method public minusHours(J)Lorg/threeten/bp/OffsetDateTime;
    .locals 5
    .param p1, "hours"    # J

    .prologue
    .line 1329
    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Lorg/threeten/bp/OffsetDateTime;->plusHours(J)Lorg/threeten/bp/OffsetDateTime;

    move-result-object v0

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v2, v3}, Lorg/threeten/bp/OffsetDateTime;->plusHours(J)Lorg/threeten/bp/OffsetDateTime;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    neg-long v0, p1

    invoke-virtual {p0, v0, v1}, Lorg/threeten/bp/OffsetDateTime;->plusHours(J)Lorg/threeten/bp/OffsetDateTime;

    move-result-object v0

    goto :goto_0
.end method

.method public minusMinutes(J)Lorg/threeten/bp/OffsetDateTime;
    .locals 5
    .param p1, "minutes"    # J

    .prologue
    .line 1342
    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Lorg/threeten/bp/OffsetDateTime;->plusMinutes(J)Lorg/threeten/bp/OffsetDateTime;

    move-result-object v0

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v2, v3}, Lorg/threeten/bp/OffsetDateTime;->plusMinutes(J)Lorg/threeten/bp/OffsetDateTime;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    neg-long v0, p1

    invoke-virtual {p0, v0, v1}, Lorg/threeten/bp/OffsetDateTime;->plusMinutes(J)Lorg/threeten/bp/OffsetDateTime;

    move-result-object v0

    goto :goto_0
.end method

.method public minusMonths(J)Lorg/threeten/bp/OffsetDateTime;
    .locals 5
    .param p1, "months"    # J

    .prologue
    .line 1278
    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Lorg/threeten/bp/OffsetDateTime;->plusMonths(J)Lorg/threeten/bp/OffsetDateTime;

    move-result-object v0

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v2, v3}, Lorg/threeten/bp/OffsetDateTime;->plusMonths(J)Lorg/threeten/bp/OffsetDateTime;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    neg-long v0, p1

    invoke-virtual {p0, v0, v1}, Lorg/threeten/bp/OffsetDateTime;->plusMonths(J)Lorg/threeten/bp/OffsetDateTime;

    move-result-object v0

    goto :goto_0
.end method

.method public minusNanos(J)Lorg/threeten/bp/OffsetDateTime;
    .locals 5
    .param p1, "nanos"    # J

    .prologue
    .line 1368
    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Lorg/threeten/bp/OffsetDateTime;->plusNanos(J)Lorg/threeten/bp/OffsetDateTime;

    move-result-object v0

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v2, v3}, Lorg/threeten/bp/OffsetDateTime;->plusNanos(J)Lorg/threeten/bp/OffsetDateTime;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    neg-long v0, p1

    invoke-virtual {p0, v0, v1}, Lorg/threeten/bp/OffsetDateTime;->plusNanos(J)Lorg/threeten/bp/OffsetDateTime;

    move-result-object v0

    goto :goto_0
.end method

.method public minusSeconds(J)Lorg/threeten/bp/OffsetDateTime;
    .locals 5
    .param p1, "seconds"    # J

    .prologue
    .line 1355
    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Lorg/threeten/bp/OffsetDateTime;->plusSeconds(J)Lorg/threeten/bp/OffsetDateTime;

    move-result-object v0

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v2, v3}, Lorg/threeten/bp/OffsetDateTime;->plusSeconds(J)Lorg/threeten/bp/OffsetDateTime;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    neg-long v0, p1

    invoke-virtual {p0, v0, v1}, Lorg/threeten/bp/OffsetDateTime;->plusSeconds(J)Lorg/threeten/bp/OffsetDateTime;

    move-result-object v0

    goto :goto_0
.end method

.method public minusWeeks(J)Lorg/threeten/bp/OffsetDateTime;
    .locals 5
    .param p1, "weeks"    # J

    .prologue
    .line 1297
    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Lorg/threeten/bp/OffsetDateTime;->plusWeeks(J)Lorg/threeten/bp/OffsetDateTime;

    move-result-object v0

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v2, v3}, Lorg/threeten/bp/OffsetDateTime;->plusWeeks(J)Lorg/threeten/bp/OffsetDateTime;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    neg-long v0, p1

    invoke-virtual {p0, v0, v1}, Lorg/threeten/bp/OffsetDateTime;->plusWeeks(J)Lorg/threeten/bp/OffsetDateTime;

    move-result-object v0

    goto :goto_0
.end method

.method public minusYears(J)Lorg/threeten/bp/OffsetDateTime;
    .locals 5
    .param p1, "years"    # J

    .prologue
    .line 1254
    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Lorg/threeten/bp/OffsetDateTime;->plusYears(J)Lorg/threeten/bp/OffsetDateTime;

    move-result-object v0

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v2, v3}, Lorg/threeten/bp/OffsetDateTime;->plusYears(J)Lorg/threeten/bp/OffsetDateTime;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    neg-long v0, p1

    invoke-virtual {p0, v0, v1}, Lorg/threeten/bp/OffsetDateTime;->plusYears(J)Lorg/threeten/bp/OffsetDateTime;

    move-result-object v0

    goto :goto_0
.end method

.method public plus(JLorg/threeten/bp/temporal/TemporalUnit;)Lorg/threeten/bp/OffsetDateTime;
    .locals 3
    .param p1, "amountToAdd"    # J
    .param p3, "unit"    # Lorg/threeten/bp/temporal/TemporalUnit;

    .prologue
    .line 1044
    instance-of v0, p3, Lorg/threeten/bp/temporal/ChronoUnit;

    if-eqz v0, :cond_0

    .line 1045
    iget-object v0, p0, Lorg/threeten/bp/OffsetDateTime;->dateTime:Lorg/threeten/bp/LocalDateTime;

    invoke-virtual {v0, p1, p2, p3}, Lorg/threeten/bp/LocalDateTime;->plus(JLorg/threeten/bp/temporal/TemporalUnit;)Lorg/threeten/bp/LocalDateTime;

    move-result-object v0

    iget-object v1, p0, Lorg/threeten/bp/OffsetDateTime;->offset:Lorg/threeten/bp/ZoneOffset;

    invoke-direct {p0, v0, v1}, Lorg/threeten/bp/OffsetDateTime;->with(Lorg/threeten/bp/LocalDateTime;Lorg/threeten/bp/ZoneOffset;)Lorg/threeten/bp/OffsetDateTime;

    move-result-object v0

    .line 1047
    :goto_0
    return-object v0

    :cond_0
    invoke-interface {p3, p0, p1, p2}, Lorg/threeten/bp/temporal/TemporalUnit;->addTo(Lorg/threeten/bp/temporal/Temporal;J)Lorg/threeten/bp/temporal/Temporal;

    move-result-object v0

    check-cast v0, Lorg/threeten/bp/OffsetDateTime;

    goto :goto_0
.end method

.method public plus(Lorg/threeten/bp/temporal/TemporalAmount;)Lorg/threeten/bp/OffsetDateTime;
    .locals 1
    .param p1, "amount"    # Lorg/threeten/bp/temporal/TemporalAmount;

    .prologue
    .line 1023
    invoke-interface {p1, p0}, Lorg/threeten/bp/temporal/TemporalAmount;->addTo(Lorg/threeten/bp/temporal/Temporal;)Lorg/threeten/bp/temporal/Temporal;

    move-result-object v0

    check-cast v0, Lorg/threeten/bp/OffsetDateTime;

    return-object v0
.end method

.method public bridge synthetic plus(JLorg/threeten/bp/temporal/TemporalUnit;)Lorg/threeten/bp/temporal/Temporal;
    .locals 1
    .param p1, "x0"    # J
    .param p3, "x1"    # Lorg/threeten/bp/temporal/TemporalUnit;

    .prologue
    .line 90
    invoke-virtual {p0, p1, p2, p3}, Lorg/threeten/bp/OffsetDateTime;->plus(JLorg/threeten/bp/temporal/TemporalUnit;)Lorg/threeten/bp/OffsetDateTime;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic plus(Lorg/threeten/bp/temporal/TemporalAmount;)Lorg/threeten/bp/temporal/Temporal;
    .locals 1
    .param p1, "x0"    # Lorg/threeten/bp/temporal/TemporalAmount;

    .prologue
    .line 90
    invoke-virtual {p0, p1}, Lorg/threeten/bp/OffsetDateTime;->plus(Lorg/threeten/bp/temporal/TemporalAmount;)Lorg/threeten/bp/OffsetDateTime;

    move-result-object v0

    return-object v0
.end method

.method public plusDays(J)Lorg/threeten/bp/OffsetDateTime;
    .locals 3
    .param p1, "days"    # J

    .prologue
    .line 1134
    iget-object v0, p0, Lorg/threeten/bp/OffsetDateTime;->dateTime:Lorg/threeten/bp/LocalDateTime;

    invoke-virtual {v0, p1, p2}, Lorg/threeten/bp/LocalDateTime;->plusDays(J)Lorg/threeten/bp/LocalDateTime;

    move-result-object v0

    iget-object v1, p0, Lorg/threeten/bp/OffsetDateTime;->offset:Lorg/threeten/bp/ZoneOffset;

    invoke-direct {p0, v0, v1}, Lorg/threeten/bp/OffsetDateTime;->with(Lorg/threeten/bp/LocalDateTime;Lorg/threeten/bp/ZoneOffset;)Lorg/threeten/bp/OffsetDateTime;

    move-result-object v0

    return-object v0
.end method

.method public plusHours(J)Lorg/threeten/bp/OffsetDateTime;
    .locals 3
    .param p1, "hours"    # J

    .prologue
    .line 1147
    iget-object v0, p0, Lorg/threeten/bp/OffsetDateTime;->dateTime:Lorg/threeten/bp/LocalDateTime;

    invoke-virtual {v0, p1, p2}, Lorg/threeten/bp/LocalDateTime;->plusHours(J)Lorg/threeten/bp/LocalDateTime;

    move-result-object v0

    iget-object v1, p0, Lorg/threeten/bp/OffsetDateTime;->offset:Lorg/threeten/bp/ZoneOffset;

    invoke-direct {p0, v0, v1}, Lorg/threeten/bp/OffsetDateTime;->with(Lorg/threeten/bp/LocalDateTime;Lorg/threeten/bp/ZoneOffset;)Lorg/threeten/bp/OffsetDateTime;

    move-result-object v0

    return-object v0
.end method

.method public plusMinutes(J)Lorg/threeten/bp/OffsetDateTime;
    .locals 3
    .param p1, "minutes"    # J

    .prologue
    .line 1160
    iget-object v0, p0, Lorg/threeten/bp/OffsetDateTime;->dateTime:Lorg/threeten/bp/LocalDateTime;

    invoke-virtual {v0, p1, p2}, Lorg/threeten/bp/LocalDateTime;->plusMinutes(J)Lorg/threeten/bp/LocalDateTime;

    move-result-object v0

    iget-object v1, p0, Lorg/threeten/bp/OffsetDateTime;->offset:Lorg/threeten/bp/ZoneOffset;

    invoke-direct {p0, v0, v1}, Lorg/threeten/bp/OffsetDateTime;->with(Lorg/threeten/bp/LocalDateTime;Lorg/threeten/bp/ZoneOffset;)Lorg/threeten/bp/OffsetDateTime;

    move-result-object v0

    return-object v0
.end method

.method public plusMonths(J)Lorg/threeten/bp/OffsetDateTime;
    .locals 3
    .param p1, "months"    # J

    .prologue
    .line 1096
    iget-object v0, p0, Lorg/threeten/bp/OffsetDateTime;->dateTime:Lorg/threeten/bp/LocalDateTime;

    invoke-virtual {v0, p1, p2}, Lorg/threeten/bp/LocalDateTime;->plusMonths(J)Lorg/threeten/bp/LocalDateTime;

    move-result-object v0

    iget-object v1, p0, Lorg/threeten/bp/OffsetDateTime;->offset:Lorg/threeten/bp/ZoneOffset;

    invoke-direct {p0, v0, v1}, Lorg/threeten/bp/OffsetDateTime;->with(Lorg/threeten/bp/LocalDateTime;Lorg/threeten/bp/ZoneOffset;)Lorg/threeten/bp/OffsetDateTime;

    move-result-object v0

    return-object v0
.end method

.method public plusNanos(J)Lorg/threeten/bp/OffsetDateTime;
    .locals 3
    .param p1, "nanos"    # J

    .prologue
    .line 1186
    iget-object v0, p0, Lorg/threeten/bp/OffsetDateTime;->dateTime:Lorg/threeten/bp/LocalDateTime;

    invoke-virtual {v0, p1, p2}, Lorg/threeten/bp/LocalDateTime;->plusNanos(J)Lorg/threeten/bp/LocalDateTime;

    move-result-object v0

    iget-object v1, p0, Lorg/threeten/bp/OffsetDateTime;->offset:Lorg/threeten/bp/ZoneOffset;

    invoke-direct {p0, v0, v1}, Lorg/threeten/bp/OffsetDateTime;->with(Lorg/threeten/bp/LocalDateTime;Lorg/threeten/bp/ZoneOffset;)Lorg/threeten/bp/OffsetDateTime;

    move-result-object v0

    return-object v0
.end method

.method public plusSeconds(J)Lorg/threeten/bp/OffsetDateTime;
    .locals 3
    .param p1, "seconds"    # J

    .prologue
    .line 1173
    iget-object v0, p0, Lorg/threeten/bp/OffsetDateTime;->dateTime:Lorg/threeten/bp/LocalDateTime;

    invoke-virtual {v0, p1, p2}, Lorg/threeten/bp/LocalDateTime;->plusSeconds(J)Lorg/threeten/bp/LocalDateTime;

    move-result-object v0

    iget-object v1, p0, Lorg/threeten/bp/OffsetDateTime;->offset:Lorg/threeten/bp/ZoneOffset;

    invoke-direct {p0, v0, v1}, Lorg/threeten/bp/OffsetDateTime;->with(Lorg/threeten/bp/LocalDateTime;Lorg/threeten/bp/ZoneOffset;)Lorg/threeten/bp/OffsetDateTime;

    move-result-object v0

    return-object v0
.end method

.method public plusWeeks(J)Lorg/threeten/bp/OffsetDateTime;
    .locals 3
    .param p1, "weeks"    # J

    .prologue
    .line 1115
    iget-object v0, p0, Lorg/threeten/bp/OffsetDateTime;->dateTime:Lorg/threeten/bp/LocalDateTime;

    invoke-virtual {v0, p1, p2}, Lorg/threeten/bp/LocalDateTime;->plusWeeks(J)Lorg/threeten/bp/LocalDateTime;

    move-result-object v0

    iget-object v1, p0, Lorg/threeten/bp/OffsetDateTime;->offset:Lorg/threeten/bp/ZoneOffset;

    invoke-direct {p0, v0, v1}, Lorg/threeten/bp/OffsetDateTime;->with(Lorg/threeten/bp/LocalDateTime;Lorg/threeten/bp/ZoneOffset;)Lorg/threeten/bp/OffsetDateTime;

    move-result-object v0

    return-object v0
.end method

.method public plusYears(J)Lorg/threeten/bp/OffsetDateTime;
    .locals 3
    .param p1, "years"    # J

    .prologue
    .line 1072
    iget-object v0, p0, Lorg/threeten/bp/OffsetDateTime;->dateTime:Lorg/threeten/bp/LocalDateTime;

    invoke-virtual {v0, p1, p2}, Lorg/threeten/bp/LocalDateTime;->plusYears(J)Lorg/threeten/bp/LocalDateTime;

    move-result-object v0

    iget-object v1, p0, Lorg/threeten/bp/OffsetDateTime;->offset:Lorg/threeten/bp/ZoneOffset;

    invoke-direct {p0, v0, v1}, Lorg/threeten/bp/OffsetDateTime;->with(Lorg/threeten/bp/LocalDateTime;Lorg/threeten/bp/ZoneOffset;)Lorg/threeten/bp/OffsetDateTime;

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
    .line 1393
    .local p1, "query":Lorg/threeten/bp/temporal/TemporalQuery;, "Lorg/threeten/bp/temporal/TemporalQuery<TR;>;"
    invoke-static {}, Lorg/threeten/bp/temporal/TemporalQueries;->chronology()Lorg/threeten/bp/temporal/TemporalQuery;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 1394
    sget-object v0, Lorg/threeten/bp/chrono/IsoChronology;->INSTANCE:Lorg/threeten/bp/chrono/IsoChronology;

    .line 1406
    :goto_0
    return-object v0

    .line 1395
    :cond_0
    invoke-static {}, Lorg/threeten/bp/temporal/TemporalQueries;->precision()Lorg/threeten/bp/temporal/TemporalQuery;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 1396
    sget-object v0, Lorg/threeten/bp/temporal/ChronoUnit;->NANOS:Lorg/threeten/bp/temporal/ChronoUnit;

    goto :goto_0

    .line 1397
    :cond_1
    invoke-static {}, Lorg/threeten/bp/temporal/TemporalQueries;->offset()Lorg/threeten/bp/temporal/TemporalQuery;

    move-result-object v0

    if-eq p1, v0, :cond_2

    invoke-static {}, Lorg/threeten/bp/temporal/TemporalQueries;->zone()Lorg/threeten/bp/temporal/TemporalQuery;

    move-result-object v0

    if-ne p1, v0, :cond_3

    .line 1398
    :cond_2
    invoke-virtual {p0}, Lorg/threeten/bp/OffsetDateTime;->getOffset()Lorg/threeten/bp/ZoneOffset;

    move-result-object v0

    goto :goto_0

    .line 1399
    :cond_3
    invoke-static {}, Lorg/threeten/bp/temporal/TemporalQueries;->localDate()Lorg/threeten/bp/temporal/TemporalQuery;

    move-result-object v0

    if-ne p1, v0, :cond_4

    .line 1400
    invoke-virtual {p0}, Lorg/threeten/bp/OffsetDateTime;->toLocalDate()Lorg/threeten/bp/LocalDate;

    move-result-object v0

    goto :goto_0

    .line 1401
    :cond_4
    invoke-static {}, Lorg/threeten/bp/temporal/TemporalQueries;->localTime()Lorg/threeten/bp/temporal/TemporalQuery;

    move-result-object v0

    if-ne p1, v0, :cond_5

    .line 1402
    invoke-virtual {p0}, Lorg/threeten/bp/OffsetDateTime;->toLocalTime()Lorg/threeten/bp/LocalTime;

    move-result-object v0

    goto :goto_0

    .line 1403
    :cond_5
    invoke-static {}, Lorg/threeten/bp/temporal/TemporalQueries;->zoneId()Lorg/threeten/bp/temporal/TemporalQuery;

    move-result-object v0

    if-ne p1, v0, :cond_6

    .line 1404
    const/4 v0, 0x0

    goto :goto_0

    .line 1406
    :cond_6
    invoke-super {p0, p1}, Lorg/threeten/bp/jdk8/DefaultInterfaceTemporal;->query(Lorg/threeten/bp/temporal/TemporalQuery;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public range(Lorg/threeten/bp/temporal/TemporalField;)Lorg/threeten/bp/temporal/ValueRange;
    .locals 1
    .param p1, "field"    # Lorg/threeten/bp/temporal/TemporalField;

    .prologue
    .line 476
    instance-of v0, p1, Lorg/threeten/bp/temporal/ChronoField;

    if-eqz v0, :cond_2

    .line 477
    sget-object v0, Lorg/threeten/bp/temporal/ChronoField;->INSTANT_SECONDS:Lorg/threeten/bp/temporal/ChronoField;

    if-eq p1, v0, :cond_0

    sget-object v0, Lorg/threeten/bp/temporal/ChronoField;->OFFSET_SECONDS:Lorg/threeten/bp/temporal/ChronoField;

    if-ne p1, v0, :cond_1

    .line 478
    :cond_0
    invoke-interface {p1}, Lorg/threeten/bp/temporal/TemporalField;->range()Lorg/threeten/bp/temporal/ValueRange;

    move-result-object v0

    .line 482
    :goto_0
    return-object v0

    .line 480
    :cond_1
    iget-object v0, p0, Lorg/threeten/bp/OffsetDateTime;->dateTime:Lorg/threeten/bp/LocalDateTime;

    invoke-virtual {v0, p1}, Lorg/threeten/bp/LocalDateTime;->range(Lorg/threeten/bp/temporal/TemporalField;)Lorg/threeten/bp/temporal/ValueRange;

    move-result-object v0

    goto :goto_0

    .line 482
    :cond_2
    invoke-interface {p1, p0}, Lorg/threeten/bp/temporal/TemporalField;->rangeRefinedBy(Lorg/threeten/bp/temporal/TemporalAccessor;)Lorg/threeten/bp/temporal/ValueRange;

    move-result-object v0

    goto :goto_0
.end method

.method public toEpochSecond()J
    .locals 2

    .prologue
    .line 1632
    iget-object v0, p0, Lorg/threeten/bp/OffsetDateTime;->dateTime:Lorg/threeten/bp/LocalDateTime;

    iget-object v1, p0, Lorg/threeten/bp/OffsetDateTime;->offset:Lorg/threeten/bp/ZoneOffset;

    invoke-virtual {v0, v1}, Lorg/threeten/bp/LocalDateTime;->toEpochSecond(Lorg/threeten/bp/ZoneOffset;)J

    move-result-wide v0

    return-wide v0
.end method

.method public toInstant()Lorg/threeten/bp/Instant;
    .locals 2

    .prologue
    .line 1619
    iget-object v0, p0, Lorg/threeten/bp/OffsetDateTime;->dateTime:Lorg/threeten/bp/LocalDateTime;

    iget-object v1, p0, Lorg/threeten/bp/OffsetDateTime;->offset:Lorg/threeten/bp/ZoneOffset;

    invoke-virtual {v0, v1}, Lorg/threeten/bp/LocalDateTime;->toInstant(Lorg/threeten/bp/ZoneOffset;)Lorg/threeten/bp/Instant;

    move-result-object v0

    return-object v0
.end method

.method public toLocalDate()Lorg/threeten/bp/LocalDate;
    .locals 1

    .prologue
    .line 1571
    iget-object v0, p0, Lorg/threeten/bp/OffsetDateTime;->dateTime:Lorg/threeten/bp/LocalDateTime;

    invoke-virtual {v0}, Lorg/threeten/bp/LocalDateTime;->toLocalDate()Lorg/threeten/bp/LocalDate;

    move-result-object v0

    return-object v0
.end method

.method public toLocalDateTime()Lorg/threeten/bp/LocalDateTime;
    .locals 1

    .prologue
    .line 1559
    iget-object v0, p0, Lorg/threeten/bp/OffsetDateTime;->dateTime:Lorg/threeten/bp/LocalDateTime;

    return-object v0
.end method

.method public toLocalTime()Lorg/threeten/bp/LocalTime;
    .locals 1

    .prologue
    .line 1583
    iget-object v0, p0, Lorg/threeten/bp/OffsetDateTime;->dateTime:Lorg/threeten/bp/LocalDateTime;

    invoke-virtual {v0}, Lorg/threeten/bp/LocalDateTime;->toLocalTime()Lorg/threeten/bp/LocalTime;

    move-result-object v0

    return-object v0
.end method

.method public toOffsetTime()Lorg/threeten/bp/OffsetTime;
    .locals 2

    .prologue
    .line 1595
    iget-object v0, p0, Lorg/threeten/bp/OffsetDateTime;->dateTime:Lorg/threeten/bp/LocalDateTime;

    invoke-virtual {v0}, Lorg/threeten/bp/LocalDateTime;->toLocalTime()Lorg/threeten/bp/LocalTime;

    move-result-object v0

    iget-object v1, p0, Lorg/threeten/bp/OffsetDateTime;->offset:Lorg/threeten/bp/ZoneOffset;

    invoke-static {v0, v1}, Lorg/threeten/bp/OffsetTime;->of(Lorg/threeten/bp/LocalTime;Lorg/threeten/bp/ZoneOffset;)Lorg/threeten/bp/OffsetTime;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1776
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/threeten/bp/OffsetDateTime;->dateTime:Lorg/threeten/bp/LocalDateTime;

    invoke-virtual {v1}, Lorg/threeten/bp/LocalDateTime;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/threeten/bp/OffsetDateTime;->offset:Lorg/threeten/bp/ZoneOffset;

    invoke-virtual {v1}, Lorg/threeten/bp/ZoneOffset;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toZonedDateTime()Lorg/threeten/bp/ZonedDateTime;
    .locals 2

    .prologue
    .line 1610
    iget-object v0, p0, Lorg/threeten/bp/OffsetDateTime;->dateTime:Lorg/threeten/bp/LocalDateTime;

    iget-object v1, p0, Lorg/threeten/bp/OffsetDateTime;->offset:Lorg/threeten/bp/ZoneOffset;

    invoke-static {v0, v1}, Lorg/threeten/bp/ZonedDateTime;->of(Lorg/threeten/bp/LocalDateTime;Lorg/threeten/bp/ZoneId;)Lorg/threeten/bp/ZonedDateTime;

    move-result-object v0

    return-object v0
.end method

.method public truncatedTo(Lorg/threeten/bp/temporal/TemporalUnit;)Lorg/threeten/bp/OffsetDateTime;
    .locals 2
    .param p1, "unit"    # Lorg/threeten/bp/temporal/TemporalUnit;

    .prologue
    .line 1000
    iget-object v0, p0, Lorg/threeten/bp/OffsetDateTime;->dateTime:Lorg/threeten/bp/LocalDateTime;

    invoke-virtual {v0, p1}, Lorg/threeten/bp/LocalDateTime;->truncatedTo(Lorg/threeten/bp/temporal/TemporalUnit;)Lorg/threeten/bp/LocalDateTime;

    move-result-object v0

    iget-object v1, p0, Lorg/threeten/bp/OffsetDateTime;->offset:Lorg/threeten/bp/ZoneOffset;

    invoke-direct {p0, v0, v1}, Lorg/threeten/bp/OffsetDateTime;->with(Lorg/threeten/bp/LocalDateTime;Lorg/threeten/bp/ZoneOffset;)Lorg/threeten/bp/OffsetDateTime;

    move-result-object v0

    return-object v0
.end method

.method public until(Lorg/threeten/bp/temporal/Temporal;Lorg/threeten/bp/temporal/TemporalUnit;)J
    .locals 4
    .param p1, "endExclusive"    # Lorg/threeten/bp/temporal/Temporal;
    .param p2, "unit"    # Lorg/threeten/bp/temporal/TemporalUnit;

    .prologue
    .line 1493
    invoke-static {p1}, Lorg/threeten/bp/OffsetDateTime;->from(Lorg/threeten/bp/temporal/TemporalAccessor;)Lorg/threeten/bp/OffsetDateTime;

    move-result-object v0

    .line 1494
    .local v0, "end":Lorg/threeten/bp/OffsetDateTime;
    instance-of v1, p2, Lorg/threeten/bp/temporal/ChronoUnit;

    if-eqz v1, :cond_0

    .line 1495
    iget-object v1, p0, Lorg/threeten/bp/OffsetDateTime;->offset:Lorg/threeten/bp/ZoneOffset;

    invoke-virtual {v0, v1}, Lorg/threeten/bp/OffsetDateTime;->withOffsetSameInstant(Lorg/threeten/bp/ZoneOffset;)Lorg/threeten/bp/OffsetDateTime;

    move-result-object v0

    .line 1496
    iget-object v1, p0, Lorg/threeten/bp/OffsetDateTime;->dateTime:Lorg/threeten/bp/LocalDateTime;

    iget-object v2, v0, Lorg/threeten/bp/OffsetDateTime;->dateTime:Lorg/threeten/bp/LocalDateTime;

    invoke-virtual {v1, v2, p2}, Lorg/threeten/bp/LocalDateTime;->until(Lorg/threeten/bp/temporal/Temporal;Lorg/threeten/bp/temporal/TemporalUnit;)J

    move-result-wide v2

    .line 1498
    :goto_0
    return-wide v2

    :cond_0
    invoke-interface {p2, p0, v0}, Lorg/threeten/bp/temporal/TemporalUnit;->between(Lorg/threeten/bp/temporal/Temporal;Lorg/threeten/bp/temporal/Temporal;)J

    move-result-wide v2

    goto :goto_0
.end method

.method public with(Lorg/threeten/bp/temporal/TemporalAdjuster;)Lorg/threeten/bp/OffsetDateTime;
    .locals 2
    .param p1, "adjuster"    # Lorg/threeten/bp/temporal/TemporalAdjuster;

    .prologue
    .line 784
    instance-of v0, p1, Lorg/threeten/bp/LocalDate;

    if-nez v0, :cond_0

    instance-of v0, p1, Lorg/threeten/bp/LocalTime;

    if-nez v0, :cond_0

    instance-of v0, p1, Lorg/threeten/bp/LocalDateTime;

    if-eqz v0, :cond_1

    .line 785
    :cond_0
    iget-object v0, p0, Lorg/threeten/bp/OffsetDateTime;->dateTime:Lorg/threeten/bp/LocalDateTime;

    invoke-virtual {v0, p1}, Lorg/threeten/bp/LocalDateTime;->with(Lorg/threeten/bp/temporal/TemporalAdjuster;)Lorg/threeten/bp/LocalDateTime;

    move-result-object v0

    iget-object v1, p0, Lorg/threeten/bp/OffsetDateTime;->offset:Lorg/threeten/bp/ZoneOffset;

    invoke-direct {p0, v0, v1}, Lorg/threeten/bp/OffsetDateTime;->with(Lorg/threeten/bp/LocalDateTime;Lorg/threeten/bp/ZoneOffset;)Lorg/threeten/bp/OffsetDateTime;

    move-result-object p1

    .line 793
    .end local p1    # "adjuster":Lorg/threeten/bp/temporal/TemporalAdjuster;
    :goto_0
    return-object p1

    .line 786
    .restart local p1    # "adjuster":Lorg/threeten/bp/temporal/TemporalAdjuster;
    :cond_1
    instance-of v0, p1, Lorg/threeten/bp/Instant;

    if-eqz v0, :cond_2

    .line 787
    check-cast p1, Lorg/threeten/bp/Instant;

    .end local p1    # "adjuster":Lorg/threeten/bp/temporal/TemporalAdjuster;
    iget-object v0, p0, Lorg/threeten/bp/OffsetDateTime;->offset:Lorg/threeten/bp/ZoneOffset;

    invoke-static {p1, v0}, Lorg/threeten/bp/OffsetDateTime;->ofInstant(Lorg/threeten/bp/Instant;Lorg/threeten/bp/ZoneId;)Lorg/threeten/bp/OffsetDateTime;

    move-result-object p1

    goto :goto_0

    .line 788
    .restart local p1    # "adjuster":Lorg/threeten/bp/temporal/TemporalAdjuster;
    :cond_2
    instance-of v0, p1, Lorg/threeten/bp/ZoneOffset;

    if-eqz v0, :cond_3

    .line 789
    iget-object v0, p0, Lorg/threeten/bp/OffsetDateTime;->dateTime:Lorg/threeten/bp/LocalDateTime;

    check-cast p1, Lorg/threeten/bp/ZoneOffset;

    .end local p1    # "adjuster":Lorg/threeten/bp/temporal/TemporalAdjuster;
    invoke-direct {p0, v0, p1}, Lorg/threeten/bp/OffsetDateTime;->with(Lorg/threeten/bp/LocalDateTime;Lorg/threeten/bp/ZoneOffset;)Lorg/threeten/bp/OffsetDateTime;

    move-result-object p1

    goto :goto_0

    .line 790
    .restart local p1    # "adjuster":Lorg/threeten/bp/temporal/TemporalAdjuster;
    :cond_3
    instance-of v0, p1, Lorg/threeten/bp/OffsetDateTime;

    if-eqz v0, :cond_4

    .line 791
    check-cast p1, Lorg/threeten/bp/OffsetDateTime;

    goto :goto_0

    .line 793
    :cond_4
    invoke-interface {p1, p0}, Lorg/threeten/bp/temporal/TemporalAdjuster;->adjustInto(Lorg/threeten/bp/temporal/Temporal;)Lorg/threeten/bp/temporal/Temporal;

    move-result-object v0

    check-cast v0, Lorg/threeten/bp/OffsetDateTime;

    move-object p1, v0

    goto :goto_0
.end method

.method public with(Lorg/threeten/bp/temporal/TemporalField;J)Lorg/threeten/bp/OffsetDateTime;
    .locals 4
    .param p1, "field"    # Lorg/threeten/bp/temporal/TemporalField;
    .param p2, "newValue"    # J

    .prologue
    .line 841
    instance-of v1, p1, Lorg/threeten/bp/temporal/ChronoField;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 842
    check-cast v0, Lorg/threeten/bp/temporal/ChronoField;

    .line 843
    .local v0, "f":Lorg/threeten/bp/temporal/ChronoField;
    sget-object v1, Lorg/threeten/bp/OffsetDateTime$3;->$SwitchMap$org$threeten$bp$temporal$ChronoField:[I

    invoke-virtual {v0}, Lorg/threeten/bp/temporal/ChronoField;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 849
    iget-object v1, p0, Lorg/threeten/bp/OffsetDateTime;->dateTime:Lorg/threeten/bp/LocalDateTime;

    invoke-virtual {v1, p1, p2, p3}, Lorg/threeten/bp/LocalDateTime;->with(Lorg/threeten/bp/temporal/TemporalField;J)Lorg/threeten/bp/LocalDateTime;

    move-result-object v1

    iget-object v2, p0, Lorg/threeten/bp/OffsetDateTime;->offset:Lorg/threeten/bp/ZoneOffset;

    invoke-direct {p0, v1, v2}, Lorg/threeten/bp/OffsetDateTime;->with(Lorg/threeten/bp/LocalDateTime;Lorg/threeten/bp/ZoneOffset;)Lorg/threeten/bp/OffsetDateTime;

    move-result-object v1

    .line 851
    .end local v0    # "f":Lorg/threeten/bp/temporal/ChronoField;
    :goto_0
    return-object v1

    .line 844
    .restart local v0    # "f":Lorg/threeten/bp/temporal/ChronoField;
    :pswitch_0
    invoke-virtual {p0}, Lorg/threeten/bp/OffsetDateTime;->getNano()I

    move-result v1

    int-to-long v2, v1

    invoke-static {p2, p3, v2, v3}, Lorg/threeten/bp/Instant;->ofEpochSecond(JJ)Lorg/threeten/bp/Instant;

    move-result-object v1

    iget-object v2, p0, Lorg/threeten/bp/OffsetDateTime;->offset:Lorg/threeten/bp/ZoneOffset;

    invoke-static {v1, v2}, Lorg/threeten/bp/OffsetDateTime;->ofInstant(Lorg/threeten/bp/Instant;Lorg/threeten/bp/ZoneId;)Lorg/threeten/bp/OffsetDateTime;

    move-result-object v1

    goto :goto_0

    .line 846
    :pswitch_1
    iget-object v1, p0, Lorg/threeten/bp/OffsetDateTime;->dateTime:Lorg/threeten/bp/LocalDateTime;

    invoke-virtual {v0, p2, p3}, Lorg/threeten/bp/temporal/ChronoField;->checkValidIntValue(J)I

    move-result v2

    invoke-static {v2}, Lorg/threeten/bp/ZoneOffset;->ofTotalSeconds(I)Lorg/threeten/bp/ZoneOffset;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lorg/threeten/bp/OffsetDateTime;->with(Lorg/threeten/bp/LocalDateTime;Lorg/threeten/bp/ZoneOffset;)Lorg/threeten/bp/OffsetDateTime;

    move-result-object v1

    goto :goto_0

    .line 851
    .end local v0    # "f":Lorg/threeten/bp/temporal/ChronoField;
    :cond_0
    invoke-interface {p1, p0, p2, p3}, Lorg/threeten/bp/temporal/TemporalField;->adjustInto(Lorg/threeten/bp/temporal/Temporal;J)Lorg/threeten/bp/temporal/Temporal;

    move-result-object v1

    check-cast v1, Lorg/threeten/bp/OffsetDateTime;

    goto :goto_0

    .line 843
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public bridge synthetic with(Lorg/threeten/bp/temporal/TemporalAdjuster;)Lorg/threeten/bp/temporal/Temporal;
    .locals 1
    .param p1, "x0"    # Lorg/threeten/bp/temporal/TemporalAdjuster;

    .prologue
    .line 90
    invoke-virtual {p0, p1}, Lorg/threeten/bp/OffsetDateTime;->with(Lorg/threeten/bp/temporal/TemporalAdjuster;)Lorg/threeten/bp/OffsetDateTime;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic with(Lorg/threeten/bp/temporal/TemporalField;J)Lorg/threeten/bp/temporal/Temporal;
    .locals 2
    .param p1, "x0"    # Lorg/threeten/bp/temporal/TemporalField;
    .param p2, "x1"    # J

    .prologue
    .line 90
    invoke-virtual {p0, p1, p2, p3}, Lorg/threeten/bp/OffsetDateTime;->with(Lorg/threeten/bp/temporal/TemporalField;J)Lorg/threeten/bp/OffsetDateTime;

    move-result-object v0

    return-object v0
.end method

.method public withDayOfMonth(I)Lorg/threeten/bp/OffsetDateTime;
    .locals 2
    .param p1, "dayOfMonth"    # I

    .prologue
    .line 898
    iget-object v0, p0, Lorg/threeten/bp/OffsetDateTime;->dateTime:Lorg/threeten/bp/LocalDateTime;

    invoke-virtual {v0, p1}, Lorg/threeten/bp/LocalDateTime;->withDayOfMonth(I)Lorg/threeten/bp/LocalDateTime;

    move-result-object v0

    iget-object v1, p0, Lorg/threeten/bp/OffsetDateTime;->offset:Lorg/threeten/bp/ZoneOffset;

    invoke-direct {p0, v0, v1}, Lorg/threeten/bp/OffsetDateTime;->with(Lorg/threeten/bp/LocalDateTime;Lorg/threeten/bp/ZoneOffset;)Lorg/threeten/bp/OffsetDateTime;

    move-result-object v0

    return-object v0
.end method

.method public withDayOfYear(I)Lorg/threeten/bp/OffsetDateTime;
    .locals 2
    .param p1, "dayOfYear"    # I

    .prologue
    .line 913
    iget-object v0, p0, Lorg/threeten/bp/OffsetDateTime;->dateTime:Lorg/threeten/bp/LocalDateTime;

    invoke-virtual {v0, p1}, Lorg/threeten/bp/LocalDateTime;->withDayOfYear(I)Lorg/threeten/bp/LocalDateTime;

    move-result-object v0

    iget-object v1, p0, Lorg/threeten/bp/OffsetDateTime;->offset:Lorg/threeten/bp/ZoneOffset;

    invoke-direct {p0, v0, v1}, Lorg/threeten/bp/OffsetDateTime;->with(Lorg/threeten/bp/LocalDateTime;Lorg/threeten/bp/ZoneOffset;)Lorg/threeten/bp/OffsetDateTime;

    move-result-object v0

    return-object v0
.end method

.method public withHour(I)Lorg/threeten/bp/OffsetDateTime;
    .locals 2
    .param p1, "hour"    # I

    .prologue
    .line 929
    iget-object v0, p0, Lorg/threeten/bp/OffsetDateTime;->dateTime:Lorg/threeten/bp/LocalDateTime;

    invoke-virtual {v0, p1}, Lorg/threeten/bp/LocalDateTime;->withHour(I)Lorg/threeten/bp/LocalDateTime;

    move-result-object v0

    iget-object v1, p0, Lorg/threeten/bp/OffsetDateTime;->offset:Lorg/threeten/bp/ZoneOffset;

    invoke-direct {p0, v0, v1}, Lorg/threeten/bp/OffsetDateTime;->with(Lorg/threeten/bp/LocalDateTime;Lorg/threeten/bp/ZoneOffset;)Lorg/threeten/bp/OffsetDateTime;

    move-result-object v0

    return-object v0
.end method

.method public withMinute(I)Lorg/threeten/bp/OffsetDateTime;
    .locals 2
    .param p1, "minute"    # I

    .prologue
    .line 944
    iget-object v0, p0, Lorg/threeten/bp/OffsetDateTime;->dateTime:Lorg/threeten/bp/LocalDateTime;

    invoke-virtual {v0, p1}, Lorg/threeten/bp/LocalDateTime;->withMinute(I)Lorg/threeten/bp/LocalDateTime;

    move-result-object v0

    iget-object v1, p0, Lorg/threeten/bp/OffsetDateTime;->offset:Lorg/threeten/bp/ZoneOffset;

    invoke-direct {p0, v0, v1}, Lorg/threeten/bp/OffsetDateTime;->with(Lorg/threeten/bp/LocalDateTime;Lorg/threeten/bp/ZoneOffset;)Lorg/threeten/bp/OffsetDateTime;

    move-result-object v0

    return-object v0
.end method

.method public withMonth(I)Lorg/threeten/bp/OffsetDateTime;
    .locals 2
    .param p1, "month"    # I

    .prologue
    .line 882
    iget-object v0, p0, Lorg/threeten/bp/OffsetDateTime;->dateTime:Lorg/threeten/bp/LocalDateTime;

    invoke-virtual {v0, p1}, Lorg/threeten/bp/LocalDateTime;->withMonth(I)Lorg/threeten/bp/LocalDateTime;

    move-result-object v0

    iget-object v1, p0, Lorg/threeten/bp/OffsetDateTime;->offset:Lorg/threeten/bp/ZoneOffset;

    invoke-direct {p0, v0, v1}, Lorg/threeten/bp/OffsetDateTime;->with(Lorg/threeten/bp/LocalDateTime;Lorg/threeten/bp/ZoneOffset;)Lorg/threeten/bp/OffsetDateTime;

    move-result-object v0

    return-object v0
.end method

.method public withNano(I)Lorg/threeten/bp/OffsetDateTime;
    .locals 2
    .param p1, "nanoOfSecond"    # I

    .prologue
    .line 974
    iget-object v0, p0, Lorg/threeten/bp/OffsetDateTime;->dateTime:Lorg/threeten/bp/LocalDateTime;

    invoke-virtual {v0, p1}, Lorg/threeten/bp/LocalDateTime;->withNano(I)Lorg/threeten/bp/LocalDateTime;

    move-result-object v0

    iget-object v1, p0, Lorg/threeten/bp/OffsetDateTime;->offset:Lorg/threeten/bp/ZoneOffset;

    invoke-direct {p0, v0, v1}, Lorg/threeten/bp/OffsetDateTime;->with(Lorg/threeten/bp/LocalDateTime;Lorg/threeten/bp/ZoneOffset;)Lorg/threeten/bp/OffsetDateTime;

    move-result-object v0

    return-object v0
.end method

.method public withOffsetSameInstant(Lorg/threeten/bp/ZoneOffset;)Lorg/threeten/bp/OffsetDateTime;
    .locals 6
    .param p1, "offset"    # Lorg/threeten/bp/ZoneOffset;

    .prologue
    .line 609
    iget-object v2, p0, Lorg/threeten/bp/OffsetDateTime;->offset:Lorg/threeten/bp/ZoneOffset;

    invoke-virtual {p1, v2}, Lorg/threeten/bp/ZoneOffset;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 614
    .end local p0    # "this":Lorg/threeten/bp/OffsetDateTime;
    :goto_0
    return-object p0

    .line 612
    .restart local p0    # "this":Lorg/threeten/bp/OffsetDateTime;
    :cond_0
    invoke-virtual {p1}, Lorg/threeten/bp/ZoneOffset;->getTotalSeconds()I

    move-result v2

    iget-object v3, p0, Lorg/threeten/bp/OffsetDateTime;->offset:Lorg/threeten/bp/ZoneOffset;

    invoke-virtual {v3}, Lorg/threeten/bp/ZoneOffset;->getTotalSeconds()I

    move-result v3

    sub-int v1, v2, v3

    .line 613
    .local v1, "difference":I
    iget-object v2, p0, Lorg/threeten/bp/OffsetDateTime;->dateTime:Lorg/threeten/bp/LocalDateTime;

    int-to-long v4, v1

    invoke-virtual {v2, v4, v5}, Lorg/threeten/bp/LocalDateTime;->plusSeconds(J)Lorg/threeten/bp/LocalDateTime;

    move-result-object v0

    .line 614
    .local v0, "adjusted":Lorg/threeten/bp/LocalDateTime;
    new-instance p0, Lorg/threeten/bp/OffsetDateTime;

    .end local p0    # "this":Lorg/threeten/bp/OffsetDateTime;
    invoke-direct {p0, v0, p1}, Lorg/threeten/bp/OffsetDateTime;-><init>(Lorg/threeten/bp/LocalDateTime;Lorg/threeten/bp/ZoneOffset;)V

    goto :goto_0
.end method

.method public withOffsetSameLocal(Lorg/threeten/bp/ZoneOffset;)Lorg/threeten/bp/OffsetDateTime;
    .locals 1
    .param p1, "offset"    # Lorg/threeten/bp/ZoneOffset;

    .prologue
    .line 586
    iget-object v0, p0, Lorg/threeten/bp/OffsetDateTime;->dateTime:Lorg/threeten/bp/LocalDateTime;

    invoke-direct {p0, v0, p1}, Lorg/threeten/bp/OffsetDateTime;->with(Lorg/threeten/bp/LocalDateTime;Lorg/threeten/bp/ZoneOffset;)Lorg/threeten/bp/OffsetDateTime;

    move-result-object v0

    return-object v0
.end method

.method public withSecond(I)Lorg/threeten/bp/OffsetDateTime;
    .locals 2
    .param p1, "second"    # I

    .prologue
    .line 959
    iget-object v0, p0, Lorg/threeten/bp/OffsetDateTime;->dateTime:Lorg/threeten/bp/LocalDateTime;

    invoke-virtual {v0, p1}, Lorg/threeten/bp/LocalDateTime;->withSecond(I)Lorg/threeten/bp/LocalDateTime;

    move-result-object v0

    iget-object v1, p0, Lorg/threeten/bp/OffsetDateTime;->offset:Lorg/threeten/bp/ZoneOffset;

    invoke-direct {p0, v0, v1}, Lorg/threeten/bp/OffsetDateTime;->with(Lorg/threeten/bp/LocalDateTime;Lorg/threeten/bp/ZoneOffset;)Lorg/threeten/bp/OffsetDateTime;

    move-result-object v0

    return-object v0
.end method

.method public withYear(I)Lorg/threeten/bp/OffsetDateTime;
    .locals 2
    .param p1, "year"    # I

    .prologue
    .line 867
    iget-object v0, p0, Lorg/threeten/bp/OffsetDateTime;->dateTime:Lorg/threeten/bp/LocalDateTime;

    invoke-virtual {v0, p1}, Lorg/threeten/bp/LocalDateTime;->withYear(I)Lorg/threeten/bp/LocalDateTime;

    move-result-object v0

    iget-object v1, p0, Lorg/threeten/bp/OffsetDateTime;->offset:Lorg/threeten/bp/ZoneOffset;

    invoke-direct {p0, v0, v1}, Lorg/threeten/bp/OffsetDateTime;->with(Lorg/threeten/bp/LocalDateTime;Lorg/threeten/bp/ZoneOffset;)Lorg/threeten/bp/OffsetDateTime;

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
    .line 1809
    iget-object v0, p0, Lorg/threeten/bp/OffsetDateTime;->dateTime:Lorg/threeten/bp/LocalDateTime;

    invoke-virtual {v0, p1}, Lorg/threeten/bp/LocalDateTime;->writeExternal(Ljava/io/DataOutput;)V

    .line 1810
    iget-object v0, p0, Lorg/threeten/bp/OffsetDateTime;->offset:Lorg/threeten/bp/ZoneOffset;

    invoke-virtual {v0, p1}, Lorg/threeten/bp/ZoneOffset;->writeExternal(Ljava/io/DataOutput;)V

    .line 1811
    return-void
.end method
