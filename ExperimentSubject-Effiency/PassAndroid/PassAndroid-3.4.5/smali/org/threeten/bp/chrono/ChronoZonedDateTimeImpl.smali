.class final Lorg/threeten/bp/chrono/ChronoZonedDateTimeImpl;
.super Lorg/threeten/bp/chrono/ChronoZonedDateTime;
.source "ChronoZonedDateTimeImpl.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/threeten/bp/chrono/ChronoZonedDateTimeImpl$1;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<D:",
        "Lorg/threeten/bp/chrono/ChronoLocalDate;",
        ">",
        "Lorg/threeten/bp/chrono/ChronoZonedDateTime",
        "<TD;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x4905b7f16d4b26a7L


# instance fields
.field private final dateTime:Lorg/threeten/bp/chrono/ChronoLocalDateTimeImpl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/threeten/bp/chrono/ChronoLocalDateTimeImpl",
            "<TD;>;"
        }
    .end annotation
.end field

.field private final offset:Lorg/threeten/bp/ZoneOffset;

.field private final zone:Lorg/threeten/bp/ZoneId;


# direct methods
.method private constructor <init>(Lorg/threeten/bp/chrono/ChronoLocalDateTimeImpl;Lorg/threeten/bp/ZoneOffset;Lorg/threeten/bp/ZoneId;)V
    .locals 1
    .param p2, "offset"    # Lorg/threeten/bp/ZoneOffset;
    .param p3, "zone"    # Lorg/threeten/bp/ZoneId;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/threeten/bp/chrono/ChronoLocalDateTimeImpl",
            "<TD;>;",
            "Lorg/threeten/bp/ZoneOffset;",
            "Lorg/threeten/bp/ZoneId;",
            ")V"
        }
    .end annotation

    .prologue
    .line 169
    .local p0, "this":Lorg/threeten/bp/chrono/ChronoZonedDateTimeImpl;, "Lorg/threeten/bp/chrono/ChronoZonedDateTimeImpl<TD;>;"
    .local p1, "dateTime":Lorg/threeten/bp/chrono/ChronoLocalDateTimeImpl;, "Lorg/threeten/bp/chrono/ChronoLocalDateTimeImpl<TD;>;"
    invoke-direct {p0}, Lorg/threeten/bp/chrono/ChronoZonedDateTime;-><init>()V

    .line 170
    const-string v0, "dateTime"

    invoke-static {p1, v0}, Lorg/threeten/bp/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/threeten/bp/chrono/ChronoLocalDateTimeImpl;

    iput-object v0, p0, Lorg/threeten/bp/chrono/ChronoZonedDateTimeImpl;->dateTime:Lorg/threeten/bp/chrono/ChronoLocalDateTimeImpl;

    .line 171
    const-string v0, "offset"

    invoke-static {p2, v0}, Lorg/threeten/bp/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/threeten/bp/ZoneOffset;

    iput-object v0, p0, Lorg/threeten/bp/chrono/ChronoZonedDateTimeImpl;->offset:Lorg/threeten/bp/ZoneOffset;

    .line 172
    const-string v0, "zone"

    invoke-static {p3, v0}, Lorg/threeten/bp/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/threeten/bp/ZoneId;

    iput-object v0, p0, Lorg/threeten/bp/chrono/ChronoZonedDateTimeImpl;->zone:Lorg/threeten/bp/ZoneId;

    .line 173
    return-void
.end method

.method private create(Lorg/threeten/bp/Instant;Lorg/threeten/bp/ZoneId;)Lorg/threeten/bp/chrono/ChronoZonedDateTimeImpl;
    .locals 1
    .param p1, "instant"    # Lorg/threeten/bp/Instant;
    .param p2, "zone"    # Lorg/threeten/bp/ZoneId;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/threeten/bp/Instant;",
            "Lorg/threeten/bp/ZoneId;",
            ")",
            "Lorg/threeten/bp/chrono/ChronoZonedDateTimeImpl",
            "<TD;>;"
        }
    .end annotation

    .prologue
    .line 158
    .local p0, "this":Lorg/threeten/bp/chrono/ChronoZonedDateTimeImpl;, "Lorg/threeten/bp/chrono/ChronoZonedDateTimeImpl<TD;>;"
    invoke-virtual {p0}, Lorg/threeten/bp/chrono/ChronoZonedDateTimeImpl;->toLocalDate()Lorg/threeten/bp/chrono/ChronoLocalDate;

    move-result-object v0

    invoke-virtual {v0}, Lorg/threeten/bp/chrono/ChronoLocalDate;->getChronology()Lorg/threeten/bp/chrono/Chronology;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lorg/threeten/bp/chrono/ChronoZonedDateTimeImpl;->ofInstant(Lorg/threeten/bp/chrono/Chronology;Lorg/threeten/bp/Instant;Lorg/threeten/bp/ZoneId;)Lorg/threeten/bp/chrono/ChronoZonedDateTimeImpl;

    move-result-object v0

    return-object v0
.end method

.method static ofBest(Lorg/threeten/bp/chrono/ChronoLocalDateTimeImpl;Lorg/threeten/bp/ZoneId;Lorg/threeten/bp/ZoneOffset;)Lorg/threeten/bp/chrono/ChronoZonedDateTime;
    .locals 8
    .param p1, "zone"    # Lorg/threeten/bp/ZoneId;
    .param p2, "preferredOffset"    # Lorg/threeten/bp/ZoneOffset;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Lorg/threeten/bp/chrono/ChronoLocalDate;",
            ">(",
            "Lorg/threeten/bp/chrono/ChronoLocalDateTimeImpl",
            "<TR;>;",
            "Lorg/threeten/bp/ZoneId;",
            "Lorg/threeten/bp/ZoneOffset;",
            ")",
            "Lorg/threeten/bp/chrono/ChronoZonedDateTime",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .local p0, "localDateTime":Lorg/threeten/bp/chrono/ChronoLocalDateTimeImpl;, "Lorg/threeten/bp/chrono/ChronoLocalDateTimeImpl<TR;>;"
    const/4 v7, 0x0

    .line 106
    const-string v5, "localDateTime"

    invoke-static {p0, v5}, Lorg/threeten/bp/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 107
    const-string v5, "zone"

    invoke-static {p1, v5}, Lorg/threeten/bp/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 108
    instance-of v5, p1, Lorg/threeten/bp/ZoneOffset;

    if-eqz v5, :cond_0

    .line 109
    new-instance v6, Lorg/threeten/bp/chrono/ChronoZonedDateTimeImpl;

    move-object v5, p1

    check-cast v5, Lorg/threeten/bp/ZoneOffset;

    invoke-direct {v6, p0, v5, p1}, Lorg/threeten/bp/chrono/ChronoZonedDateTimeImpl;-><init>(Lorg/threeten/bp/chrono/ChronoLocalDateTimeImpl;Lorg/threeten/bp/ZoneOffset;Lorg/threeten/bp/ZoneId;)V

    move-object v5, v6

    .line 129
    :goto_0
    return-object v5

    .line 111
    :cond_0
    invoke-virtual {p1}, Lorg/threeten/bp/ZoneId;->getRules()Lorg/threeten/bp/zone/ZoneRules;

    move-result-object v2

    .line 112
    .local v2, "rules":Lorg/threeten/bp/zone/ZoneRules;
    invoke-static {p0}, Lorg/threeten/bp/LocalDateTime;->from(Lorg/threeten/bp/temporal/TemporalAccessor;)Lorg/threeten/bp/LocalDateTime;

    move-result-object v0

    .line 113
    .local v0, "isoLDT":Lorg/threeten/bp/LocalDateTime;
    invoke-virtual {v2, v0}, Lorg/threeten/bp/zone/ZoneRules;->getValidOffsets(Lorg/threeten/bp/LocalDateTime;)Ljava/util/List;

    move-result-object v4

    .line 115
    .local v4, "validOffsets":Ljava/util/List;, "Ljava/util/List<Lorg/threeten/bp/ZoneOffset;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1

    .line 116
    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/threeten/bp/ZoneOffset;

    .line 128
    .local v1, "offset":Lorg/threeten/bp/ZoneOffset;
    :goto_1
    const-string v5, "offset"

    invoke-static {v1, v5}, Lorg/threeten/bp/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 129
    new-instance v5, Lorg/threeten/bp/chrono/ChronoZonedDateTimeImpl;

    invoke-direct {v5, p0, v1, p1}, Lorg/threeten/bp/chrono/ChronoZonedDateTimeImpl;-><init>(Lorg/threeten/bp/chrono/ChronoLocalDateTimeImpl;Lorg/threeten/bp/ZoneOffset;Lorg/threeten/bp/ZoneId;)V

    goto :goto_0

    .line 117
    .end local v1    # "offset":Lorg/threeten/bp/ZoneOffset;
    :cond_1
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_2

    .line 118
    invoke-virtual {v2, v0}, Lorg/threeten/bp/zone/ZoneRules;->getTransition(Lorg/threeten/bp/LocalDateTime;)Lorg/threeten/bp/zone/ZoneOffsetTransition;

    move-result-object v3

    .line 119
    .local v3, "trans":Lorg/threeten/bp/zone/ZoneOffsetTransition;
    invoke-virtual {v3}, Lorg/threeten/bp/zone/ZoneOffsetTransition;->getDuration()Lorg/threeten/bp/Duration;

    move-result-object v5

    invoke-virtual {v5}, Lorg/threeten/bp/Duration;->getSeconds()J

    move-result-wide v6

    invoke-virtual {p0, v6, v7}, Lorg/threeten/bp/chrono/ChronoLocalDateTimeImpl;->plusSeconds(J)Lorg/threeten/bp/chrono/ChronoLocalDateTimeImpl;

    move-result-object p0

    .line 120
    invoke-virtual {v3}, Lorg/threeten/bp/zone/ZoneOffsetTransition;->getOffsetAfter()Lorg/threeten/bp/ZoneOffset;

    move-result-object v1

    .line 121
    .restart local v1    # "offset":Lorg/threeten/bp/ZoneOffset;
    goto :goto_1

    .line 122
    .end local v1    # "offset":Lorg/threeten/bp/ZoneOffset;
    .end local v3    # "trans":Lorg/threeten/bp/zone/ZoneOffsetTransition;
    :cond_2
    if-eqz p2, :cond_3

    invoke-interface {v4, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 123
    move-object v1, p2

    .restart local v1    # "offset":Lorg/threeten/bp/ZoneOffset;
    goto :goto_1

    .line 125
    .end local v1    # "offset":Lorg/threeten/bp/ZoneOffset;
    :cond_3
    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/threeten/bp/ZoneOffset;

    .restart local v1    # "offset":Lorg/threeten/bp/ZoneOffset;
    goto :goto_1
.end method

.method static ofInstant(Lorg/threeten/bp/chrono/Chronology;Lorg/threeten/bp/Instant;Lorg/threeten/bp/ZoneId;)Lorg/threeten/bp/chrono/ChronoZonedDateTimeImpl;
    .locals 7
    .param p0, "chrono"    # Lorg/threeten/bp/chrono/Chronology;
    .param p1, "instant"    # Lorg/threeten/bp/Instant;
    .param p2, "zone"    # Lorg/threeten/bp/ZoneId;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Lorg/threeten/bp/chrono/ChronoLocalDate;",
            ">(",
            "Lorg/threeten/bp/chrono/Chronology;",
            "Lorg/threeten/bp/Instant;",
            "Lorg/threeten/bp/ZoneId;",
            ")",
            "Lorg/threeten/bp/chrono/ChronoZonedDateTimeImpl",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 141
    invoke-virtual {p2}, Lorg/threeten/bp/ZoneId;->getRules()Lorg/threeten/bp/zone/ZoneRules;

    move-result-object v3

    .line 142
    .local v3, "rules":Lorg/threeten/bp/zone/ZoneRules;
    invoke-virtual {v3, p1}, Lorg/threeten/bp/zone/ZoneRules;->getOffset(Lorg/threeten/bp/Instant;)Lorg/threeten/bp/ZoneOffset;

    move-result-object v2

    .line 143
    .local v2, "offset":Lorg/threeten/bp/ZoneOffset;
    const-string v4, "offset"

    invoke-static {v2, v4}, Lorg/threeten/bp/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 144
    invoke-virtual {p1}, Lorg/threeten/bp/Instant;->getEpochSecond()J

    move-result-wide v4

    invoke-virtual {p1}, Lorg/threeten/bp/Instant;->getNano()I

    move-result v6

    invoke-static {v4, v5, v6, v2}, Lorg/threeten/bp/LocalDateTime;->ofEpochSecond(JILorg/threeten/bp/ZoneOffset;)Lorg/threeten/bp/LocalDateTime;

    move-result-object v1

    .line 146
    .local v1, "ldt":Lorg/threeten/bp/LocalDateTime;
    invoke-virtual {p0, v1}, Lorg/threeten/bp/chrono/Chronology;->localDateTime(Lorg/threeten/bp/temporal/TemporalAccessor;)Lorg/threeten/bp/chrono/ChronoLocalDateTime;

    move-result-object v0

    check-cast v0, Lorg/threeten/bp/chrono/ChronoLocalDateTimeImpl;

    .line 147
    .local v0, "cldt":Lorg/threeten/bp/chrono/ChronoLocalDateTimeImpl;, "Lorg/threeten/bp/chrono/ChronoLocalDateTimeImpl<TR;>;"
    new-instance v4, Lorg/threeten/bp/chrono/ChronoZonedDateTimeImpl;

    invoke-direct {v4, v0, v2, p2}, Lorg/threeten/bp/chrono/ChronoZonedDateTimeImpl;-><init>(Lorg/threeten/bp/chrono/ChronoLocalDateTimeImpl;Lorg/threeten/bp/ZoneOffset;Lorg/threeten/bp/ZoneId;)V

    return-object v4
.end method

.method static readExternal(Ljava/io/ObjectInput;)Lorg/threeten/bp/chrono/ChronoZonedDateTime;
    .locals 4
    .param p0, "in"    # Ljava/io/ObjectInput;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/ObjectInput;",
            ")",
            "Lorg/threeten/bp/chrono/ChronoZonedDateTime",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 297
    invoke-interface {p0}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/threeten/bp/chrono/ChronoLocalDateTime;

    .line 298
    .local v0, "dateTime":Lorg/threeten/bp/chrono/ChronoLocalDateTime;, "Lorg/threeten/bp/chrono/ChronoLocalDateTime<*>;"
    invoke-interface {p0}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/threeten/bp/ZoneOffset;

    .line 299
    .local v1, "offset":Lorg/threeten/bp/ZoneOffset;
    invoke-interface {p0}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/threeten/bp/ZoneId;

    .line 300
    .local v2, "zone":Lorg/threeten/bp/ZoneId;
    invoke-virtual {v0, v1}, Lorg/threeten/bp/chrono/ChronoLocalDateTime;->atZone(Lorg/threeten/bp/ZoneId;)Lorg/threeten/bp/chrono/ChronoZonedDateTime;

    move-result-object v3

    invoke-virtual {v3, v2}, Lorg/threeten/bp/chrono/ChronoZonedDateTime;->withZoneSameLocal(Lorg/threeten/bp/ZoneId;)Lorg/threeten/bp/chrono/ChronoZonedDateTime;

    move-result-object v3

    return-object v3
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .prologue
    .line 287
    .local p0, "this":Lorg/threeten/bp/chrono/ChronoZonedDateTimeImpl;, "Lorg/threeten/bp/chrono/ChronoZonedDateTimeImpl<TD;>;"
    new-instance v0, Ljava/io/InvalidObjectException;

    const-string v1, "Deserialization via serialization delegate"

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private writeReplace()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 278
    .local p0, "this":Lorg/threeten/bp/chrono/ChronoZonedDateTimeImpl;, "Lorg/threeten/bp/chrono/ChronoZonedDateTimeImpl<TD;>;"
    new-instance v0, Lorg/threeten/bp/chrono/Ser;

    const/16 v1, 0xd

    invoke-direct {v0, v1, p0}, Lorg/threeten/bp/chrono/Ser;-><init>(BLjava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Lorg/threeten/bp/chrono/ChronoZonedDateTimeImpl;, "Lorg/threeten/bp/chrono/ChronoZonedDateTimeImpl<TD;>;"
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 307
    if-ne p0, p1, :cond_1

    .line 313
    .end local p1    # "obj":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v0

    .line 310
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_1
    instance-of v2, p1, Lorg/threeten/bp/chrono/ChronoZonedDateTime;

    if-eqz v2, :cond_2

    .line 311
    check-cast p1, Lorg/threeten/bp/chrono/ChronoZonedDateTime;

    .end local p1    # "obj":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/threeten/bp/chrono/ChronoZonedDateTimeImpl;->compareTo(Lorg/threeten/bp/chrono/ChronoZonedDateTime;)I

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_2
    move v0, v1

    .line 313
    goto :goto_0
.end method

.method public getOffset()Lorg/threeten/bp/ZoneOffset;
    .locals 1

    .prologue
    .line 185
    .local p0, "this":Lorg/threeten/bp/chrono/ChronoZonedDateTimeImpl;, "Lorg/threeten/bp/chrono/ChronoZonedDateTimeImpl<TD;>;"
    iget-object v0, p0, Lorg/threeten/bp/chrono/ChronoZonedDateTimeImpl;->offset:Lorg/threeten/bp/ZoneOffset;

    return-object v0
.end method

.method public getZone()Lorg/threeten/bp/ZoneId;
    .locals 1

    .prologue
    .line 219
    .local p0, "this":Lorg/threeten/bp/chrono/ChronoZonedDateTimeImpl;, "Lorg/threeten/bp/chrono/ChronoZonedDateTimeImpl<TD;>;"
    iget-object v0, p0, Lorg/threeten/bp/chrono/ChronoZonedDateTimeImpl;->zone:Lorg/threeten/bp/ZoneId;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 318
    .local p0, "this":Lorg/threeten/bp/chrono/ChronoZonedDateTimeImpl;, "Lorg/threeten/bp/chrono/ChronoZonedDateTimeImpl<TD;>;"
    invoke-virtual {p0}, Lorg/threeten/bp/chrono/ChronoZonedDateTimeImpl;->toLocalDateTime()Lorg/threeten/bp/chrono/ChronoLocalDateTime;

    move-result-object v0

    invoke-virtual {v0}, Lorg/threeten/bp/chrono/ChronoLocalDateTime;->hashCode()I

    move-result v0

    invoke-virtual {p0}, Lorg/threeten/bp/chrono/ChronoZonedDateTimeImpl;->getOffset()Lorg/threeten/bp/ZoneOffset;

    move-result-object v1

    invoke-virtual {v1}, Lorg/threeten/bp/ZoneOffset;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    invoke-virtual {p0}, Lorg/threeten/bp/chrono/ChronoZonedDateTimeImpl;->getZone()Lorg/threeten/bp/ZoneId;

    move-result-object v1

    invoke-virtual {v1}, Lorg/threeten/bp/ZoneId;->hashCode()I

    move-result v1

    const/4 v2, 0x3

    invoke-static {v1, v2}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public isSupported(Lorg/threeten/bp/temporal/TemporalField;)Z
    .locals 1
    .param p1, "field"    # Lorg/threeten/bp/temporal/TemporalField;

    .prologue
    .line 235
    .local p0, "this":Lorg/threeten/bp/chrono/ChronoZonedDateTimeImpl;, "Lorg/threeten/bp/chrono/ChronoZonedDateTimeImpl<TD;>;"
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
    .local p0, "this":Lorg/threeten/bp/chrono/ChronoZonedDateTimeImpl;, "Lorg/threeten/bp/chrono/ChronoZonedDateTimeImpl<TD;>;"
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 178
    instance-of v2, p1, Lorg/threeten/bp/temporal/ChronoUnit;

    if-eqz v2, :cond_2

    .line 179
    invoke-interface {p1}, Lorg/threeten/bp/temporal/TemporalUnit;->isDateBased()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {p1}, Lorg/threeten/bp/temporal/TemporalUnit;->isTimeBased()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    move v0, v1

    .line 181
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

.method public plus(JLorg/threeten/bp/temporal/TemporalUnit;)Lorg/threeten/bp/chrono/ChronoZonedDateTime;
    .locals 3
    .param p1, "amountToAdd"    # J
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
    .line 258
    .local p0, "this":Lorg/threeten/bp/chrono/ChronoZonedDateTimeImpl;, "Lorg/threeten/bp/chrono/ChronoZonedDateTimeImpl<TD;>;"
    instance-of v0, p3, Lorg/threeten/bp/temporal/ChronoUnit;

    if-eqz v0, :cond_0

    .line 259
    iget-object v0, p0, Lorg/threeten/bp/chrono/ChronoZonedDateTimeImpl;->dateTime:Lorg/threeten/bp/chrono/ChronoLocalDateTimeImpl;

    invoke-virtual {v0, p1, p2, p3}, Lorg/threeten/bp/chrono/ChronoLocalDateTimeImpl;->plus(JLorg/threeten/bp/temporal/TemporalUnit;)Lorg/threeten/bp/chrono/ChronoLocalDateTimeImpl;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/threeten/bp/chrono/ChronoZonedDateTimeImpl;->with(Lorg/threeten/bp/temporal/TemporalAdjuster;)Lorg/threeten/bp/chrono/ChronoZonedDateTime;

    move-result-object v0

    .line 261
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/threeten/bp/chrono/ChronoZonedDateTimeImpl;->toLocalDate()Lorg/threeten/bp/chrono/ChronoLocalDate;

    move-result-object v0

    invoke-virtual {v0}, Lorg/threeten/bp/chrono/ChronoLocalDate;->getChronology()Lorg/threeten/bp/chrono/Chronology;

    move-result-object v0

    invoke-interface {p3, p0, p1, p2}, Lorg/threeten/bp/temporal/TemporalUnit;->addTo(Lorg/threeten/bp/temporal/Temporal;J)Lorg/threeten/bp/temporal/Temporal;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/threeten/bp/chrono/Chronology;->ensureChronoZonedDateTime(Lorg/threeten/bp/temporal/Temporal;)Lorg/threeten/bp/chrono/ChronoZonedDateTimeImpl;

    move-result-object v0

    goto :goto_0
.end method

.method public bridge synthetic plus(JLorg/threeten/bp/temporal/TemporalUnit;)Lorg/threeten/bp/temporal/Temporal;
    .locals 1
    .param p1, "x0"    # J
    .param p3, "x1"    # Lorg/threeten/bp/temporal/TemporalUnit;

    .prologue
    .line 73
    .local p0, "this":Lorg/threeten/bp/chrono/ChronoZonedDateTimeImpl;, "Lorg/threeten/bp/chrono/ChronoZonedDateTimeImpl<TD;>;"
    invoke-virtual {p0, p1, p2, p3}, Lorg/threeten/bp/chrono/ChronoZonedDateTimeImpl;->plus(JLorg/threeten/bp/temporal/TemporalUnit;)Lorg/threeten/bp/chrono/ChronoZonedDateTime;

    move-result-object v0

    return-object v0
.end method

.method public toLocalDateTime()Lorg/threeten/bp/chrono/ChronoLocalDateTime;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/threeten/bp/chrono/ChronoLocalDateTime",
            "<TD;>;"
        }
    .end annotation

    .prologue
    .line 215
    .local p0, "this":Lorg/threeten/bp/chrono/ChronoZonedDateTimeImpl;, "Lorg/threeten/bp/chrono/ChronoZonedDateTimeImpl<TD;>;"
    iget-object v0, p0, Lorg/threeten/bp/chrono/ChronoZonedDateTimeImpl;->dateTime:Lorg/threeten/bp/chrono/ChronoLocalDateTimeImpl;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 323
    .local p0, "this":Lorg/threeten/bp/chrono/ChronoZonedDateTimeImpl;, "Lorg/threeten/bp/chrono/ChronoZonedDateTimeImpl<TD;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/threeten/bp/chrono/ChronoZonedDateTimeImpl;->toLocalDateTime()Lorg/threeten/bp/chrono/ChronoLocalDateTime;

    move-result-object v2

    invoke-virtual {v2}, Lorg/threeten/bp/chrono/ChronoLocalDateTime;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/threeten/bp/chrono/ChronoZonedDateTimeImpl;->getOffset()Lorg/threeten/bp/ZoneOffset;

    move-result-object v2

    invoke-virtual {v2}, Lorg/threeten/bp/ZoneOffset;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 324
    .local v0, "str":Ljava/lang/String;
    invoke-virtual {p0}, Lorg/threeten/bp/chrono/ChronoZonedDateTimeImpl;->getOffset()Lorg/threeten/bp/ZoneOffset;

    move-result-object v1

    invoke-virtual {p0}, Lorg/threeten/bp/chrono/ChronoZonedDateTimeImpl;->getZone()Lorg/threeten/bp/ZoneId;

    move-result-object v2

    if-eq v1, v2, :cond_0

    .line 325
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x5b

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/threeten/bp/chrono/ChronoZonedDateTimeImpl;->getZone()Lorg/threeten/bp/ZoneId;

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

    .line 327
    :cond_0
    return-object v0
.end method

.method public until(Lorg/threeten/bp/temporal/Temporal;Lorg/threeten/bp/temporal/TemporalUnit;)J
    .locals 4
    .param p1, "endExclusive"    # Lorg/threeten/bp/temporal/Temporal;
    .param p2, "unit"    # Lorg/threeten/bp/temporal/TemporalUnit;

    .prologue
    .line 268
    .local p0, "this":Lorg/threeten/bp/chrono/ChronoZonedDateTimeImpl;, "Lorg/threeten/bp/chrono/ChronoZonedDateTimeImpl<TD;>;"
    invoke-virtual {p0}, Lorg/threeten/bp/chrono/ChronoZonedDateTimeImpl;->toLocalDate()Lorg/threeten/bp/chrono/ChronoLocalDate;

    move-result-object v1

    invoke-virtual {v1}, Lorg/threeten/bp/chrono/ChronoLocalDate;->getChronology()Lorg/threeten/bp/chrono/Chronology;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/threeten/bp/chrono/Chronology;->zonedDateTime(Lorg/threeten/bp/temporal/TemporalAccessor;)Lorg/threeten/bp/chrono/ChronoZonedDateTime;

    move-result-object v0

    .line 269
    .local v0, "end":Lorg/threeten/bp/chrono/ChronoZonedDateTime;, "Lorg/threeten/bp/chrono/ChronoZonedDateTime<TD;>;"
    instance-of v1, p2, Lorg/threeten/bp/temporal/ChronoUnit;

    if-eqz v1, :cond_0

    .line 270
    iget-object v1, p0, Lorg/threeten/bp/chrono/ChronoZonedDateTimeImpl;->offset:Lorg/threeten/bp/ZoneOffset;

    invoke-virtual {v0, v1}, Lorg/threeten/bp/chrono/ChronoZonedDateTime;->withZoneSameInstant(Lorg/threeten/bp/ZoneId;)Lorg/threeten/bp/chrono/ChronoZonedDateTime;

    move-result-object v0

    .line 271
    iget-object v1, p0, Lorg/threeten/bp/chrono/ChronoZonedDateTimeImpl;->dateTime:Lorg/threeten/bp/chrono/ChronoLocalDateTimeImpl;

    invoke-virtual {v0}, Lorg/threeten/bp/chrono/ChronoZonedDateTime;->toLocalDateTime()Lorg/threeten/bp/chrono/ChronoLocalDateTime;

    move-result-object v2

    invoke-virtual {v1, v2, p2}, Lorg/threeten/bp/chrono/ChronoLocalDateTimeImpl;->until(Lorg/threeten/bp/temporal/Temporal;Lorg/threeten/bp/temporal/TemporalUnit;)J

    move-result-wide v2

    .line 273
    :goto_0
    return-wide v2

    :cond_0
    invoke-interface {p2, p0, v0}, Lorg/threeten/bp/temporal/TemporalUnit;->between(Lorg/threeten/bp/temporal/Temporal;Lorg/threeten/bp/temporal/Temporal;)J

    move-result-wide v2

    goto :goto_0
.end method

.method public with(Lorg/threeten/bp/temporal/TemporalField;J)Lorg/threeten/bp/chrono/ChronoZonedDateTime;
    .locals 6
    .param p1, "field"    # Lorg/threeten/bp/temporal/TemporalField;
    .param p2, "newValue"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/threeten/bp/temporal/TemporalField;",
            "J)",
            "Lorg/threeten/bp/chrono/ChronoZonedDateTime",
            "<TD;>;"
        }
    .end annotation

    .prologue
    .line 241
    .local p0, "this":Lorg/threeten/bp/chrono/ChronoZonedDateTimeImpl;, "Lorg/threeten/bp/chrono/ChronoZonedDateTimeImpl<TD;>;"
    instance-of v2, p1, Lorg/threeten/bp/temporal/ChronoField;

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 242
    check-cast v0, Lorg/threeten/bp/temporal/ChronoField;

    .line 243
    .local v0, "f":Lorg/threeten/bp/temporal/ChronoField;
    sget-object v2, Lorg/threeten/bp/chrono/ChronoZonedDateTimeImpl$1;->$SwitchMap$org$threeten$bp$temporal$ChronoField:[I

    invoke-virtual {v0}, Lorg/threeten/bp/temporal/ChronoField;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 250
    iget-object v2, p0, Lorg/threeten/bp/chrono/ChronoZonedDateTimeImpl;->dateTime:Lorg/threeten/bp/chrono/ChronoLocalDateTimeImpl;

    invoke-virtual {v2, p1, p2, p3}, Lorg/threeten/bp/chrono/ChronoLocalDateTimeImpl;->with(Lorg/threeten/bp/temporal/TemporalField;J)Lorg/threeten/bp/chrono/ChronoLocalDateTimeImpl;

    move-result-object v2

    iget-object v3, p0, Lorg/threeten/bp/chrono/ChronoZonedDateTimeImpl;->zone:Lorg/threeten/bp/ZoneId;

    iget-object v4, p0, Lorg/threeten/bp/chrono/ChronoZonedDateTimeImpl;->offset:Lorg/threeten/bp/ZoneOffset;

    invoke-static {v2, v3, v4}, Lorg/threeten/bp/chrono/ChronoZonedDateTimeImpl;->ofBest(Lorg/threeten/bp/chrono/ChronoLocalDateTimeImpl;Lorg/threeten/bp/ZoneId;Lorg/threeten/bp/ZoneOffset;)Lorg/threeten/bp/chrono/ChronoZonedDateTime;

    move-result-object v2

    .line 252
    .end local v0    # "f":Lorg/threeten/bp/temporal/ChronoField;
    :goto_0
    return-object v2

    .line 244
    .restart local v0    # "f":Lorg/threeten/bp/temporal/ChronoField;
    :pswitch_0
    invoke-virtual {p0}, Lorg/threeten/bp/chrono/ChronoZonedDateTimeImpl;->toEpochSecond()J

    move-result-wide v2

    sub-long v2, p2, v2

    sget-object v4, Lorg/threeten/bp/temporal/ChronoUnit;->SECONDS:Lorg/threeten/bp/temporal/ChronoUnit;

    invoke-virtual {p0, v2, v3, v4}, Lorg/threeten/bp/chrono/ChronoZonedDateTimeImpl;->plus(JLorg/threeten/bp/temporal/TemporalUnit;)Lorg/threeten/bp/chrono/ChronoZonedDateTime;

    move-result-object v2

    goto :goto_0

    .line 246
    :pswitch_1
    invoke-virtual {v0, p2, p3}, Lorg/threeten/bp/temporal/ChronoField;->checkValidIntValue(J)I

    move-result v2

    invoke-static {v2}, Lorg/threeten/bp/ZoneOffset;->ofTotalSeconds(I)Lorg/threeten/bp/ZoneOffset;

    move-result-object v1

    .line 247
    .local v1, "offset":Lorg/threeten/bp/ZoneOffset;
    iget-object v2, p0, Lorg/threeten/bp/chrono/ChronoZonedDateTimeImpl;->dateTime:Lorg/threeten/bp/chrono/ChronoLocalDateTimeImpl;

    invoke-virtual {v2, v1}, Lorg/threeten/bp/chrono/ChronoLocalDateTimeImpl;->toInstant(Lorg/threeten/bp/ZoneOffset;)Lorg/threeten/bp/Instant;

    move-result-object v2

    iget-object v3, p0, Lorg/threeten/bp/chrono/ChronoZonedDateTimeImpl;->zone:Lorg/threeten/bp/ZoneId;

    invoke-direct {p0, v2, v3}, Lorg/threeten/bp/chrono/ChronoZonedDateTimeImpl;->create(Lorg/threeten/bp/Instant;Lorg/threeten/bp/ZoneId;)Lorg/threeten/bp/chrono/ChronoZonedDateTimeImpl;

    move-result-object v2

    goto :goto_0

    .line 252
    .end local v0    # "f":Lorg/threeten/bp/temporal/ChronoField;
    .end local v1    # "offset":Lorg/threeten/bp/ZoneOffset;
    :cond_0
    invoke-virtual {p0}, Lorg/threeten/bp/chrono/ChronoZonedDateTimeImpl;->toLocalDate()Lorg/threeten/bp/chrono/ChronoLocalDate;

    move-result-object v2

    invoke-virtual {v2}, Lorg/threeten/bp/chrono/ChronoLocalDate;->getChronology()Lorg/threeten/bp/chrono/Chronology;

    move-result-object v2

    invoke-interface {p1, p0, p2, p3}, Lorg/threeten/bp/temporal/TemporalField;->adjustInto(Lorg/threeten/bp/temporal/Temporal;J)Lorg/threeten/bp/temporal/Temporal;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/threeten/bp/chrono/Chronology;->ensureChronoZonedDateTime(Lorg/threeten/bp/temporal/Temporal;)Lorg/threeten/bp/chrono/ChronoZonedDateTimeImpl;

    move-result-object v2

    goto :goto_0

    .line 243
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public bridge synthetic with(Lorg/threeten/bp/temporal/TemporalField;J)Lorg/threeten/bp/temporal/Temporal;
    .locals 2
    .param p1, "x0"    # Lorg/threeten/bp/temporal/TemporalField;
    .param p2, "x1"    # J

    .prologue
    .line 73
    .local p0, "this":Lorg/threeten/bp/chrono/ChronoZonedDateTimeImpl;, "Lorg/threeten/bp/chrono/ChronoZonedDateTimeImpl<TD;>;"
    invoke-virtual {p0, p1, p2, p3}, Lorg/threeten/bp/chrono/ChronoZonedDateTimeImpl;->with(Lorg/threeten/bp/temporal/TemporalField;J)Lorg/threeten/bp/chrono/ChronoZonedDateTime;

    move-result-object v0

    return-object v0
.end method

.method public withEarlierOffsetAtOverlap()Lorg/threeten/bp/chrono/ChronoZonedDateTime;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/threeten/bp/chrono/ChronoZonedDateTime",
            "<TD;>;"
        }
    .end annotation

    .prologue
    .line 190
    .local p0, "this":Lorg/threeten/bp/chrono/ChronoZonedDateTimeImpl;, "Lorg/threeten/bp/chrono/ChronoZonedDateTimeImpl<TD;>;"
    invoke-virtual {p0}, Lorg/threeten/bp/chrono/ChronoZonedDateTimeImpl;->getZone()Lorg/threeten/bp/ZoneId;

    move-result-object v2

    invoke-virtual {v2}, Lorg/threeten/bp/ZoneId;->getRules()Lorg/threeten/bp/zone/ZoneRules;

    move-result-object v2

    invoke-static {p0}, Lorg/threeten/bp/LocalDateTime;->from(Lorg/threeten/bp/temporal/TemporalAccessor;)Lorg/threeten/bp/LocalDateTime;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/threeten/bp/zone/ZoneRules;->getTransition(Lorg/threeten/bp/LocalDateTime;)Lorg/threeten/bp/zone/ZoneOffsetTransition;

    move-result-object v1

    .line 191
    .local v1, "trans":Lorg/threeten/bp/zone/ZoneOffsetTransition;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lorg/threeten/bp/zone/ZoneOffsetTransition;->isOverlap()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 192
    invoke-virtual {v1}, Lorg/threeten/bp/zone/ZoneOffsetTransition;->getOffsetBefore()Lorg/threeten/bp/ZoneOffset;

    move-result-object v0

    .line 193
    .local v0, "earlierOffset":Lorg/threeten/bp/ZoneOffset;
    iget-object v2, p0, Lorg/threeten/bp/chrono/ChronoZonedDateTimeImpl;->offset:Lorg/threeten/bp/ZoneOffset;

    invoke-virtual {v0, v2}, Lorg/threeten/bp/ZoneOffset;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 194
    new-instance v2, Lorg/threeten/bp/chrono/ChronoZonedDateTimeImpl;

    iget-object v3, p0, Lorg/threeten/bp/chrono/ChronoZonedDateTimeImpl;->dateTime:Lorg/threeten/bp/chrono/ChronoLocalDateTimeImpl;

    iget-object v4, p0, Lorg/threeten/bp/chrono/ChronoZonedDateTimeImpl;->zone:Lorg/threeten/bp/ZoneId;

    invoke-direct {v2, v3, v0, v4}, Lorg/threeten/bp/chrono/ChronoZonedDateTimeImpl;-><init>(Lorg/threeten/bp/chrono/ChronoLocalDateTimeImpl;Lorg/threeten/bp/ZoneOffset;Lorg/threeten/bp/ZoneId;)V

    move-object p0, v2

    .line 197
    .end local v0    # "earlierOffset":Lorg/threeten/bp/ZoneOffset;
    .end local p0    # "this":Lorg/threeten/bp/chrono/ChronoZonedDateTimeImpl;, "Lorg/threeten/bp/chrono/ChronoZonedDateTimeImpl<TD;>;"
    :cond_0
    return-object p0
.end method

.method public withLaterOffsetAtOverlap()Lorg/threeten/bp/chrono/ChronoZonedDateTime;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/threeten/bp/chrono/ChronoZonedDateTime",
            "<TD;>;"
        }
    .end annotation

    .prologue
    .line 202
    .local p0, "this":Lorg/threeten/bp/chrono/ChronoZonedDateTimeImpl;, "Lorg/threeten/bp/chrono/ChronoZonedDateTimeImpl<TD;>;"
    invoke-virtual {p0}, Lorg/threeten/bp/chrono/ChronoZonedDateTimeImpl;->getZone()Lorg/threeten/bp/ZoneId;

    move-result-object v2

    invoke-virtual {v2}, Lorg/threeten/bp/ZoneId;->getRules()Lorg/threeten/bp/zone/ZoneRules;

    move-result-object v2

    invoke-static {p0}, Lorg/threeten/bp/LocalDateTime;->from(Lorg/threeten/bp/temporal/TemporalAccessor;)Lorg/threeten/bp/LocalDateTime;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/threeten/bp/zone/ZoneRules;->getTransition(Lorg/threeten/bp/LocalDateTime;)Lorg/threeten/bp/zone/ZoneOffsetTransition;

    move-result-object v1

    .line 203
    .local v1, "trans":Lorg/threeten/bp/zone/ZoneOffsetTransition;
    if-eqz v1, :cond_0

    .line 204
    invoke-virtual {v1}, Lorg/threeten/bp/zone/ZoneOffsetTransition;->getOffsetAfter()Lorg/threeten/bp/ZoneOffset;

    move-result-object v0

    .line 205
    .local v0, "offset":Lorg/threeten/bp/ZoneOffset;
    invoke-virtual {p0}, Lorg/threeten/bp/chrono/ChronoZonedDateTimeImpl;->getOffset()Lorg/threeten/bp/ZoneOffset;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/threeten/bp/ZoneOffset;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 206
    new-instance v2, Lorg/threeten/bp/chrono/ChronoZonedDateTimeImpl;

    iget-object v3, p0, Lorg/threeten/bp/chrono/ChronoZonedDateTimeImpl;->dateTime:Lorg/threeten/bp/chrono/ChronoLocalDateTimeImpl;

    iget-object v4, p0, Lorg/threeten/bp/chrono/ChronoZonedDateTimeImpl;->zone:Lorg/threeten/bp/ZoneId;

    invoke-direct {v2, v3, v0, v4}, Lorg/threeten/bp/chrono/ChronoZonedDateTimeImpl;-><init>(Lorg/threeten/bp/chrono/ChronoLocalDateTimeImpl;Lorg/threeten/bp/ZoneOffset;Lorg/threeten/bp/ZoneId;)V

    move-object p0, v2

    .line 209
    .end local v0    # "offset":Lorg/threeten/bp/ZoneOffset;
    .end local p0    # "this":Lorg/threeten/bp/chrono/ChronoZonedDateTimeImpl;, "Lorg/threeten/bp/chrono/ChronoZonedDateTimeImpl<TD;>;"
    :cond_0
    return-object p0
.end method

.method public withZoneSameInstant(Lorg/threeten/bp/ZoneId;)Lorg/threeten/bp/chrono/ChronoZonedDateTime;
    .locals 2
    .param p1, "zone"    # Lorg/threeten/bp/ZoneId;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/threeten/bp/ZoneId;",
            ")",
            "Lorg/threeten/bp/chrono/ChronoZonedDateTime",
            "<TD;>;"
        }
    .end annotation

    .prologue
    .line 228
    .local p0, "this":Lorg/threeten/bp/chrono/ChronoZonedDateTimeImpl;, "Lorg/threeten/bp/chrono/ChronoZonedDateTimeImpl<TD;>;"
    const-string v0, "zone"

    invoke-static {p1, v0}, Lorg/threeten/bp/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 229
    iget-object v0, p0, Lorg/threeten/bp/chrono/ChronoZonedDateTimeImpl;->zone:Lorg/threeten/bp/ZoneId;

    invoke-virtual {v0, p1}, Lorg/threeten/bp/ZoneId;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .end local p0    # "this":Lorg/threeten/bp/chrono/ChronoZonedDateTimeImpl;, "Lorg/threeten/bp/chrono/ChronoZonedDateTimeImpl<TD;>;"
    :goto_0
    return-object p0

    .restart local p0    # "this":Lorg/threeten/bp/chrono/ChronoZonedDateTimeImpl;, "Lorg/threeten/bp/chrono/ChronoZonedDateTimeImpl<TD;>;"
    :cond_0
    iget-object v0, p0, Lorg/threeten/bp/chrono/ChronoZonedDateTimeImpl;->dateTime:Lorg/threeten/bp/chrono/ChronoLocalDateTimeImpl;

    iget-object v1, p0, Lorg/threeten/bp/chrono/ChronoZonedDateTimeImpl;->offset:Lorg/threeten/bp/ZoneOffset;

    invoke-virtual {v0, v1}, Lorg/threeten/bp/chrono/ChronoLocalDateTimeImpl;->toInstant(Lorg/threeten/bp/ZoneOffset;)Lorg/threeten/bp/Instant;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lorg/threeten/bp/chrono/ChronoZonedDateTimeImpl;->create(Lorg/threeten/bp/Instant;Lorg/threeten/bp/ZoneId;)Lorg/threeten/bp/chrono/ChronoZonedDateTimeImpl;

    move-result-object p0

    goto :goto_0
.end method

.method public withZoneSameLocal(Lorg/threeten/bp/ZoneId;)Lorg/threeten/bp/chrono/ChronoZonedDateTime;
    .locals 2
    .param p1, "zone"    # Lorg/threeten/bp/ZoneId;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/threeten/bp/ZoneId;",
            ")",
            "Lorg/threeten/bp/chrono/ChronoZonedDateTime",
            "<TD;>;"
        }
    .end annotation

    .prologue
    .line 223
    .local p0, "this":Lorg/threeten/bp/chrono/ChronoZonedDateTimeImpl;, "Lorg/threeten/bp/chrono/ChronoZonedDateTimeImpl<TD;>;"
    iget-object v0, p0, Lorg/threeten/bp/chrono/ChronoZonedDateTimeImpl;->dateTime:Lorg/threeten/bp/chrono/ChronoLocalDateTimeImpl;

    iget-object v1, p0, Lorg/threeten/bp/chrono/ChronoZonedDateTimeImpl;->offset:Lorg/threeten/bp/ZoneOffset;

    invoke-static {v0, p1, v1}, Lorg/threeten/bp/chrono/ChronoZonedDateTimeImpl;->ofBest(Lorg/threeten/bp/chrono/ChronoLocalDateTimeImpl;Lorg/threeten/bp/ZoneId;Lorg/threeten/bp/ZoneOffset;)Lorg/threeten/bp/chrono/ChronoZonedDateTime;

    move-result-object v0

    return-object v0
.end method

.method writeExternal(Ljava/io/ObjectOutput;)V
    .locals 1
    .param p1, "out"    # Ljava/io/ObjectOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 291
    .local p0, "this":Lorg/threeten/bp/chrono/ChronoZonedDateTimeImpl;, "Lorg/threeten/bp/chrono/ChronoZonedDateTimeImpl<TD;>;"
    iget-object v0, p0, Lorg/threeten/bp/chrono/ChronoZonedDateTimeImpl;->dateTime:Lorg/threeten/bp/chrono/ChronoLocalDateTimeImpl;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 292
    iget-object v0, p0, Lorg/threeten/bp/chrono/ChronoZonedDateTimeImpl;->offset:Lorg/threeten/bp/ZoneOffset;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 293
    iget-object v0, p0, Lorg/threeten/bp/chrono/ChronoZonedDateTimeImpl;->zone:Lorg/threeten/bp/ZoneId;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 294
    return-void
.end method
