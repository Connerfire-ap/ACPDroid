.class final Lorg/threeten/bp/zone/StandardZoneRules;
.super Lorg/threeten/bp/zone/ZoneRules;
.source "StandardZoneRules.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final LAST_CACHED_YEAR:I = 0x834

.field private static final serialVersionUID:J = 0x2a3f985312278703L


# instance fields
.field private final lastRules:[Lorg/threeten/bp/zone/ZoneOffsetTransitionRule;

.field private final lastRulesCache:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/lang/Integer;",
            "[",
            "Lorg/threeten/bp/zone/ZoneOffsetTransition;",
            ">;"
        }
    .end annotation
.end field

.field private final savingsInstantTransitions:[J

.field private final savingsLocalTransitions:[Lorg/threeten/bp/LocalDateTime;

.field private final standardOffsets:[Lorg/threeten/bp/ZoneOffset;

.field private final standardTransitions:[J

.field private final wallOffsets:[Lorg/threeten/bp/ZoneOffset;


# direct methods
.method constructor <init>(Lorg/threeten/bp/ZoneOffset;Lorg/threeten/bp/ZoneOffset;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 10
    .param p1, "baseStandardOffset"    # Lorg/threeten/bp/ZoneOffset;
    .param p2, "baseWallOffset"    # Lorg/threeten/bp/ZoneOffset;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/threeten/bp/ZoneOffset;",
            "Lorg/threeten/bp/ZoneOffset;",
            "Ljava/util/List",
            "<",
            "Lorg/threeten/bp/zone/ZoneOffsetTransition;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lorg/threeten/bp/zone/ZoneOffsetTransition;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lorg/threeten/bp/zone/ZoneOffsetTransitionRule;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 119
    .local p3, "standardOffsetTransitionList":Ljava/util/List;, "Ljava/util/List<Lorg/threeten/bp/zone/ZoneOffsetTransition;>;"
    .local p4, "transitionList":Ljava/util/List;, "Ljava/util/List<Lorg/threeten/bp/zone/ZoneOffsetTransition;>;"
    .local p5, "lastRules":Ljava/util/List;, "Ljava/util/List<Lorg/threeten/bp/zone/ZoneOffsetTransitionRule;>;"
    invoke-direct {p0}, Lorg/threeten/bp/zone/ZoneRules;-><init>()V

    .line 101
    new-instance v5, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v5}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v5, p0, Lorg/threeten/bp/zone/StandardZoneRules;->lastRulesCache:Ljava/util/concurrent/ConcurrentMap;

    .line 122
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v5

    new-array v5, v5, [J

    iput-object v5, p0, Lorg/threeten/bp/zone/StandardZoneRules;->standardTransitions:[J

    .line 123
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    new-array v5, v5, [Lorg/threeten/bp/ZoneOffset;

    iput-object v5, p0, Lorg/threeten/bp/zone/StandardZoneRules;->standardOffsets:[Lorg/threeten/bp/ZoneOffset;

    .line 124
    iget-object v5, p0, Lorg/threeten/bp/zone/StandardZoneRules;->standardOffsets:[Lorg/threeten/bp/ZoneOffset;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    .line 125
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v5

    if-ge v0, v5, :cond_0

    .line 126
    iget-object v6, p0, Lorg/threeten/bp/zone/StandardZoneRules;->standardTransitions:[J

    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/threeten/bp/zone/ZoneOffsetTransition;

    invoke-virtual {v5}, Lorg/threeten/bp/zone/ZoneOffsetTransition;->toEpochSecond()J

    move-result-wide v8

    aput-wide v8, v6, v0

    .line 127
    iget-object v6, p0, Lorg/threeten/bp/zone/StandardZoneRules;->standardOffsets:[Lorg/threeten/bp/ZoneOffset;

    add-int/lit8 v7, v0, 0x1

    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/threeten/bp/zone/ZoneOffsetTransition;

    invoke-virtual {v5}, Lorg/threeten/bp/zone/ZoneOffsetTransition;->getOffsetAfter()Lorg/threeten/bp/ZoneOffset;

    move-result-object v5

    aput-object v5, v6, v7

    .line 125
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 131
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 132
    .local v2, "localTransitionList":Ljava/util/List;, "Ljava/util/List<Lorg/threeten/bp/LocalDateTime;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 133
    .local v3, "localTransitionOffsetList":Ljava/util/List;, "Ljava/util/List<Lorg/threeten/bp/ZoneOffset;>;"
    invoke-interface {v3, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 134
    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/threeten/bp/zone/ZoneOffsetTransition;

    .line 135
    .local v4, "trans":Lorg/threeten/bp/zone/ZoneOffsetTransition;
    invoke-virtual {v4}, Lorg/threeten/bp/zone/ZoneOffsetTransition;->isGap()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 136
    invoke-virtual {v4}, Lorg/threeten/bp/zone/ZoneOffsetTransition;->getDateTimeBefore()Lorg/threeten/bp/LocalDateTime;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 137
    invoke-virtual {v4}, Lorg/threeten/bp/zone/ZoneOffsetTransition;->getDateTimeAfter()Lorg/threeten/bp/LocalDateTime;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 142
    :goto_2
    invoke-virtual {v4}, Lorg/threeten/bp/zone/ZoneOffsetTransition;->getOffsetAfter()Lorg/threeten/bp/ZoneOffset;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 139
    :cond_1
    invoke-virtual {v4}, Lorg/threeten/bp/zone/ZoneOffsetTransition;->getDateTimeAfter()Lorg/threeten/bp/LocalDateTime;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 140
    invoke-virtual {v4}, Lorg/threeten/bp/zone/ZoneOffsetTransition;->getDateTimeBefore()Lorg/threeten/bp/LocalDateTime;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 144
    .end local v4    # "trans":Lorg/threeten/bp/zone/ZoneOffsetTransition;
    :cond_2
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    new-array v5, v5, [Lorg/threeten/bp/LocalDateTime;

    invoke-interface {v2, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Lorg/threeten/bp/LocalDateTime;

    iput-object v5, p0, Lorg/threeten/bp/zone/StandardZoneRules;->savingsLocalTransitions:[Lorg/threeten/bp/LocalDateTime;

    .line 145
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    new-array v5, v5, [Lorg/threeten/bp/ZoneOffset;

    invoke-interface {v3, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Lorg/threeten/bp/ZoneOffset;

    iput-object v5, p0, Lorg/threeten/bp/zone/StandardZoneRules;->wallOffsets:[Lorg/threeten/bp/ZoneOffset;

    .line 148
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v5

    new-array v5, v5, [J

    iput-object v5, p0, Lorg/threeten/bp/zone/StandardZoneRules;->savingsInstantTransitions:[J

    .line 149
    const/4 v0, 0x0

    :goto_3
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v5

    if-ge v0, v5, :cond_3

    .line 150
    iget-object v6, p0, Lorg/threeten/bp/zone/StandardZoneRules;->savingsInstantTransitions:[J

    invoke-interface {p4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/threeten/bp/zone/ZoneOffsetTransition;

    invoke-virtual {v5}, Lorg/threeten/bp/zone/ZoneOffsetTransition;->getInstant()Lorg/threeten/bp/Instant;

    move-result-object v5

    invoke-virtual {v5}, Lorg/threeten/bp/Instant;->getEpochSecond()J

    move-result-wide v8

    aput-wide v8, v6, v0

    .line 149
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 154
    :cond_3
    invoke-interface {p5}, Ljava/util/List;->size()I

    move-result v5

    const/16 v6, 0xf

    if-le v5, v6, :cond_4

    .line 155
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "Too many transition rules"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 157
    :cond_4
    invoke-interface {p5}, Ljava/util/List;->size()I

    move-result v5

    new-array v5, v5, [Lorg/threeten/bp/zone/ZoneOffsetTransitionRule;

    invoke-interface {p5, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Lorg/threeten/bp/zone/ZoneOffsetTransitionRule;

    iput-object v5, p0, Lorg/threeten/bp/zone/StandardZoneRules;->lastRules:[Lorg/threeten/bp/zone/ZoneOffsetTransitionRule;

    .line 158
    return-void
.end method

.method private constructor <init>([J[Lorg/threeten/bp/ZoneOffset;[J[Lorg/threeten/bp/ZoneOffset;[Lorg/threeten/bp/zone/ZoneOffsetTransitionRule;)V
    .locals 8
    .param p1, "standardTransitions"    # [J
    .param p2, "standardOffsets"    # [Lorg/threeten/bp/ZoneOffset;
    .param p3, "savingsInstantTransitions"    # [J
    .param p4, "wallOffsets"    # [Lorg/threeten/bp/ZoneOffset;
    .param p5, "lastRules"    # [Lorg/threeten/bp/zone/ZoneOffsetTransitionRule;

    .prologue
    .line 175
    invoke-direct {p0}, Lorg/threeten/bp/zone/ZoneRules;-><init>()V

    .line 101
    new-instance v5, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v5}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v5, p0, Lorg/threeten/bp/zone/StandardZoneRules;->lastRulesCache:Ljava/util/concurrent/ConcurrentMap;

    .line 177
    iput-object p1, p0, Lorg/threeten/bp/zone/StandardZoneRules;->standardTransitions:[J

    .line 178
    iput-object p2, p0, Lorg/threeten/bp/zone/StandardZoneRules;->standardOffsets:[Lorg/threeten/bp/ZoneOffset;

    .line 179
    iput-object p3, p0, Lorg/threeten/bp/zone/StandardZoneRules;->savingsInstantTransitions:[J

    .line 180
    iput-object p4, p0, Lorg/threeten/bp/zone/StandardZoneRules;->wallOffsets:[Lorg/threeten/bp/ZoneOffset;

    .line 181
    iput-object p5, p0, Lorg/threeten/bp/zone/StandardZoneRules;->lastRules:[Lorg/threeten/bp/zone/ZoneOffsetTransitionRule;

    .line 184
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 185
    .local v3, "localTransitionList":Ljava/util/List;, "Ljava/util/List<Lorg/threeten/bp/LocalDateTime;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v5, p3

    if-ge v2, v5, :cond_1

    .line 186
    aget-object v1, p4, v2

    .line 187
    .local v1, "before":Lorg/threeten/bp/ZoneOffset;
    add-int/lit8 v5, v2, 0x1

    aget-object v0, p4, v5

    .line 188
    .local v0, "after":Lorg/threeten/bp/ZoneOffset;
    new-instance v4, Lorg/threeten/bp/zone/ZoneOffsetTransition;

    aget-wide v6, p3, v2

    invoke-direct {v4, v6, v7, v1, v0}, Lorg/threeten/bp/zone/ZoneOffsetTransition;-><init>(JLorg/threeten/bp/ZoneOffset;Lorg/threeten/bp/ZoneOffset;)V

    .line 189
    .local v4, "trans":Lorg/threeten/bp/zone/ZoneOffsetTransition;
    invoke-virtual {v4}, Lorg/threeten/bp/zone/ZoneOffsetTransition;->isGap()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 190
    invoke-virtual {v4}, Lorg/threeten/bp/zone/ZoneOffsetTransition;->getDateTimeBefore()Lorg/threeten/bp/LocalDateTime;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 191
    invoke-virtual {v4}, Lorg/threeten/bp/zone/ZoneOffsetTransition;->getDateTimeAfter()Lorg/threeten/bp/LocalDateTime;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 185
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 193
    :cond_0
    invoke-virtual {v4}, Lorg/threeten/bp/zone/ZoneOffsetTransition;->getDateTimeAfter()Lorg/threeten/bp/LocalDateTime;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 194
    invoke-virtual {v4}, Lorg/threeten/bp/zone/ZoneOffsetTransition;->getDateTimeBefore()Lorg/threeten/bp/LocalDateTime;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 197
    .end local v0    # "after":Lorg/threeten/bp/ZoneOffset;
    .end local v1    # "before":Lorg/threeten/bp/ZoneOffset;
    .end local v4    # "trans":Lorg/threeten/bp/zone/ZoneOffsetTransition;
    :cond_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    new-array v5, v5, [Lorg/threeten/bp/LocalDateTime;

    invoke-interface {v3, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Lorg/threeten/bp/LocalDateTime;

    iput-object v5, p0, Lorg/threeten/bp/zone/StandardZoneRules;->savingsLocalTransitions:[Lorg/threeten/bp/LocalDateTime;

    .line 198
    return-void
.end method

.method private findOffsetInfo(Lorg/threeten/bp/LocalDateTime;Lorg/threeten/bp/zone/ZoneOffsetTransition;)Ljava/lang/Object;
    .locals 2
    .param p1, "dt"    # Lorg/threeten/bp/LocalDateTime;
    .param p2, "trans"    # Lorg/threeten/bp/zone/ZoneOffsetTransition;

    .prologue
    .line 388
    invoke-virtual {p2}, Lorg/threeten/bp/zone/ZoneOffsetTransition;->getDateTimeBefore()Lorg/threeten/bp/LocalDateTime;

    move-result-object v0

    .line 389
    .local v0, "localTransition":Lorg/threeten/bp/LocalDateTime;
    invoke-virtual {p2}, Lorg/threeten/bp/zone/ZoneOffsetTransition;->isGap()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 390
    invoke-virtual {p1, v0}, Lorg/threeten/bp/LocalDateTime;->isBefore(Lorg/threeten/bp/chrono/ChronoLocalDateTime;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 391
    invoke-virtual {p2}, Lorg/threeten/bp/zone/ZoneOffsetTransition;->getOffsetBefore()Lorg/threeten/bp/ZoneOffset;

    move-result-object p2

    .line 405
    .end local p2    # "trans":Lorg/threeten/bp/zone/ZoneOffsetTransition;
    :cond_0
    :goto_0
    return-object p2

    .line 393
    .restart local p2    # "trans":Lorg/threeten/bp/zone/ZoneOffsetTransition;
    :cond_1
    invoke-virtual {p2}, Lorg/threeten/bp/zone/ZoneOffsetTransition;->getDateTimeAfter()Lorg/threeten/bp/LocalDateTime;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/threeten/bp/LocalDateTime;->isBefore(Lorg/threeten/bp/chrono/ChronoLocalDateTime;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 396
    invoke-virtual {p2}, Lorg/threeten/bp/zone/ZoneOffsetTransition;->getOffsetAfter()Lorg/threeten/bp/ZoneOffset;

    move-result-object p2

    goto :goto_0

    .line 399
    :cond_2
    invoke-virtual {p1, v0}, Lorg/threeten/bp/LocalDateTime;->isBefore(Lorg/threeten/bp/chrono/ChronoLocalDateTime;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 400
    invoke-virtual {p2}, Lorg/threeten/bp/zone/ZoneOffsetTransition;->getOffsetAfter()Lorg/threeten/bp/ZoneOffset;

    move-result-object p2

    goto :goto_0

    .line 402
    :cond_3
    invoke-virtual {p2}, Lorg/threeten/bp/zone/ZoneOffsetTransition;->getDateTimeAfter()Lorg/threeten/bp/LocalDateTime;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/threeten/bp/LocalDateTime;->isBefore(Lorg/threeten/bp/chrono/ChronoLocalDateTime;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 403
    invoke-virtual {p2}, Lorg/threeten/bp/zone/ZoneOffsetTransition;->getOffsetBefore()Lorg/threeten/bp/ZoneOffset;

    move-result-object p2

    goto :goto_0
.end method

.method private findTransitionArray(I)[Lorg/threeten/bp/zone/ZoneOffsetTransition;
    .locals 6
    .param p1, "year"    # I

    .prologue
    .line 423
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 424
    .local v4, "yearObj":Ljava/lang/Integer;
    iget-object v5, p0, Lorg/threeten/bp/zone/StandardZoneRules;->lastRulesCache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v5, v4}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lorg/threeten/bp/zone/ZoneOffsetTransition;

    .line 425
    .local v2, "transArray":[Lorg/threeten/bp/zone/ZoneOffsetTransition;
    if-eqz v2, :cond_0

    move-object v3, v2

    .line 436
    .end local v2    # "transArray":[Lorg/threeten/bp/zone/ZoneOffsetTransition;
    .local v3, "transArray":[Lorg/threeten/bp/zone/ZoneOffsetTransition;
    :goto_0
    return-object v3

    .line 428
    .end local v3    # "transArray":[Lorg/threeten/bp/zone/ZoneOffsetTransition;
    .restart local v2    # "transArray":[Lorg/threeten/bp/zone/ZoneOffsetTransition;
    :cond_0
    iget-object v1, p0, Lorg/threeten/bp/zone/StandardZoneRules;->lastRules:[Lorg/threeten/bp/zone/ZoneOffsetTransitionRule;

    .line 429
    .local v1, "ruleArray":[Lorg/threeten/bp/zone/ZoneOffsetTransitionRule;
    array-length v5, v1

    new-array v2, v5, [Lorg/threeten/bp/zone/ZoneOffsetTransition;

    .line 430
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v5, v1

    if-ge v0, v5, :cond_1

    .line 431
    aget-object v5, v1, v0

    invoke-virtual {v5, p1}, Lorg/threeten/bp/zone/ZoneOffsetTransitionRule;->createTransition(I)Lorg/threeten/bp/zone/ZoneOffsetTransition;

    move-result-object v5

    aput-object v5, v2, v0

    .line 430
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 433
    :cond_1
    const/16 v5, 0x834

    if-ge p1, v5, :cond_2

    .line 434
    iget-object v5, p0, Lorg/threeten/bp/zone/StandardZoneRules;->lastRulesCache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v5, v4, v2}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    move-object v3, v2

    .line 436
    .end local v2    # "transArray":[Lorg/threeten/bp/zone/ZoneOffsetTransition;
    .restart local v3    # "transArray":[Lorg/threeten/bp/zone/ZoneOffsetTransition;
    goto :goto_0
.end method

.method private findYear(JLorg/threeten/bp/ZoneOffset;)I
    .locals 7
    .param p1, "epochSecond"    # J
    .param p3, "offset"    # Lorg/threeten/bp/ZoneOffset;

    .prologue
    .line 548
    invoke-virtual {p3}, Lorg/threeten/bp/ZoneOffset;->getTotalSeconds()I

    move-result v4

    int-to-long v4, v4

    add-long v2, p1, v4

    .line 549
    .local v2, "localSecond":J
    const-wide/32 v4, 0x15180

    invoke-static {v2, v3, v4, v5}, Lorg/threeten/bp/jdk8/Jdk8Methods;->floorDiv(JJ)J

    move-result-wide v0

    .line 550
    .local v0, "localEpochDay":J
    invoke-static {v0, v1}, Lorg/threeten/bp/LocalDate;->ofEpochDay(J)Lorg/threeten/bp/LocalDate;

    move-result-object v4

    invoke-virtual {v4}, Lorg/threeten/bp/LocalDate;->getYear()I

    move-result v4

    return v4
.end method

.method private getOffsetInfo(Lorg/threeten/bp/LocalDateTime;)Ljava/lang/Object;
    .locals 14
    .param p1, "dt"    # Lorg/threeten/bp/LocalDateTime;

    .prologue
    .line 334
    iget-object v11, p0, Lorg/threeten/bp/zone/StandardZoneRules;->lastRules:[Lorg/threeten/bp/zone/ZoneOffsetTransitionRule;

    array-length v11, v11

    if-lez v11, :cond_2

    iget-object v11, p0, Lorg/threeten/bp/zone/StandardZoneRules;->savingsLocalTransitions:[Lorg/threeten/bp/LocalDateTime;

    iget-object v12, p0, Lorg/threeten/bp/zone/StandardZoneRules;->savingsLocalTransitions:[Lorg/threeten/bp/LocalDateTime;

    array-length v12, v12

    add-int/lit8 v12, v12, -0x1

    aget-object v11, v11, v12

    invoke-virtual {p1, v11}, Lorg/threeten/bp/LocalDateTime;->isAfter(Lorg/threeten/bp/chrono/ChronoLocalDateTime;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 336
    invoke-virtual {p1}, Lorg/threeten/bp/LocalDateTime;->getYear()I

    move-result v11

    invoke-direct {p0, v11}, Lorg/threeten/bp/zone/StandardZoneRules;->findTransitionArray(I)[Lorg/threeten/bp/zone/ZoneOffsetTransition;

    move-result-object v10

    .line 337
    .local v10, "transArray":[Lorg/threeten/bp/zone/ZoneOffsetTransition;
    const/4 v5, 0x0

    .line 338
    .local v5, "info":Ljava/lang/Object;
    move-object v0, v10

    .local v0, "arr$":[Lorg/threeten/bp/zone/ZoneOffsetTransition;
    array-length v6, v0

    .local v6, "len$":I
    const/4 v3, 0x0

    .end local v5    # "info":Ljava/lang/Object;
    .local v3, "i$":I
    :goto_0
    if-ge v3, v6, :cond_0

    aget-object v9, v0, v3

    .line 339
    .local v9, "trans":Lorg/threeten/bp/zone/ZoneOffsetTransition;
    invoke-direct {p0, p1, v9}, Lorg/threeten/bp/zone/StandardZoneRules;->findOffsetInfo(Lorg/threeten/bp/LocalDateTime;Lorg/threeten/bp/zone/ZoneOffsetTransition;)Ljava/lang/Object;

    move-result-object v5

    .line 340
    .restart local v5    # "info":Ljava/lang/Object;
    instance-of v11, v5, Lorg/threeten/bp/zone/ZoneOffsetTransition;

    if-nez v11, :cond_0

    invoke-virtual {v9}, Lorg/threeten/bp/zone/ZoneOffsetTransition;->getOffsetBefore()Lorg/threeten/bp/ZoneOffset;

    move-result-object v11

    invoke-virtual {v5, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 376
    .end local v0    # "arr$":[Lorg/threeten/bp/zone/ZoneOffsetTransition;
    .end local v3    # "i$":I
    .end local v5    # "info":Ljava/lang/Object;
    .end local v6    # "len$":I
    .end local v9    # "trans":Lorg/threeten/bp/zone/ZoneOffsetTransition;
    .end local v10    # "transArray":[Lorg/threeten/bp/zone/ZoneOffsetTransition;
    :cond_0
    :goto_1
    return-object v5

    .line 338
    .restart local v0    # "arr$":[Lorg/threeten/bp/zone/ZoneOffsetTransition;
    .restart local v3    # "i$":I
    .restart local v5    # "info":Ljava/lang/Object;
    .restart local v6    # "len$":I
    .restart local v9    # "trans":Lorg/threeten/bp/zone/ZoneOffsetTransition;
    .restart local v10    # "transArray":[Lorg/threeten/bp/zone/ZoneOffsetTransition;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 348
    .end local v0    # "arr$":[Lorg/threeten/bp/zone/ZoneOffsetTransition;
    .end local v3    # "i$":I
    .end local v5    # "info":Ljava/lang/Object;
    .end local v6    # "len$":I
    .end local v9    # "trans":Lorg/threeten/bp/zone/ZoneOffsetTransition;
    .end local v10    # "transArray":[Lorg/threeten/bp/zone/ZoneOffsetTransition;
    :cond_2
    iget-object v11, p0, Lorg/threeten/bp/zone/StandardZoneRules;->savingsLocalTransitions:[Lorg/threeten/bp/LocalDateTime;

    invoke-static {v11, p1}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v4

    .line 349
    .local v4, "index":I
    const/4 v11, -0x1

    if-ne v4, v11, :cond_3

    .line 351
    iget-object v11, p0, Lorg/threeten/bp/zone/StandardZoneRules;->wallOffsets:[Lorg/threeten/bp/ZoneOffset;

    const/4 v12, 0x0

    aget-object v5, v11, v12

    goto :goto_1

    .line 353
    :cond_3
    if-gez v4, :cond_5

    .line 355
    neg-int v11, v4

    add-int/lit8 v4, v11, -0x2

    .line 361
    :cond_4
    :goto_2
    and-int/lit8 v11, v4, 0x1

    if-nez v11, :cond_7

    .line 363
    iget-object v11, p0, Lorg/threeten/bp/zone/StandardZoneRules;->savingsLocalTransitions:[Lorg/threeten/bp/LocalDateTime;

    aget-object v2, v11, v4

    .line 364
    .local v2, "dtBefore":Lorg/threeten/bp/LocalDateTime;
    iget-object v11, p0, Lorg/threeten/bp/zone/StandardZoneRules;->savingsLocalTransitions:[Lorg/threeten/bp/LocalDateTime;

    add-int/lit8 v12, v4, 0x1

    aget-object v1, v11, v12

    .line 365
    .local v1, "dtAfter":Lorg/threeten/bp/LocalDateTime;
    iget-object v11, p0, Lorg/threeten/bp/zone/StandardZoneRules;->wallOffsets:[Lorg/threeten/bp/ZoneOffset;

    div-int/lit8 v12, v4, 0x2

    aget-object v8, v11, v12

    .line 366
    .local v8, "offsetBefore":Lorg/threeten/bp/ZoneOffset;
    iget-object v11, p0, Lorg/threeten/bp/zone/StandardZoneRules;->wallOffsets:[Lorg/threeten/bp/ZoneOffset;

    div-int/lit8 v12, v4, 0x2

    add-int/lit8 v12, v12, 0x1

    aget-object v7, v11, v12

    .line 367
    .local v7, "offsetAfter":Lorg/threeten/bp/ZoneOffset;
    invoke-virtual {v7}, Lorg/threeten/bp/ZoneOffset;->getTotalSeconds()I

    move-result v11

    invoke-virtual {v8}, Lorg/threeten/bp/ZoneOffset;->getTotalSeconds()I

    move-result v12

    if-le v11, v12, :cond_6

    .line 369
    new-instance v5, Lorg/threeten/bp/zone/ZoneOffsetTransition;

    invoke-direct {v5, v2, v8, v7}, Lorg/threeten/bp/zone/ZoneOffsetTransition;-><init>(Lorg/threeten/bp/LocalDateTime;Lorg/threeten/bp/ZoneOffset;Lorg/threeten/bp/ZoneOffset;)V

    goto :goto_1

    .line 356
    .end local v1    # "dtAfter":Lorg/threeten/bp/LocalDateTime;
    .end local v2    # "dtBefore":Lorg/threeten/bp/LocalDateTime;
    .end local v7    # "offsetAfter":Lorg/threeten/bp/ZoneOffset;
    .end local v8    # "offsetBefore":Lorg/threeten/bp/ZoneOffset;
    :cond_5
    iget-object v11, p0, Lorg/threeten/bp/zone/StandardZoneRules;->savingsLocalTransitions:[Lorg/threeten/bp/LocalDateTime;

    array-length v11, v11

    add-int/lit8 v11, v11, -0x1

    if-ge v4, v11, :cond_4

    iget-object v11, p0, Lorg/threeten/bp/zone/StandardZoneRules;->savingsLocalTransitions:[Lorg/threeten/bp/LocalDateTime;

    aget-object v11, v11, v4

    iget-object v12, p0, Lorg/threeten/bp/zone/StandardZoneRules;->savingsLocalTransitions:[Lorg/threeten/bp/LocalDateTime;

    add-int/lit8 v13, v4, 0x1

    aget-object v12, v12, v13

    invoke-virtual {v11, v12}, Lorg/threeten/bp/LocalDateTime;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 359
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 372
    .restart local v1    # "dtAfter":Lorg/threeten/bp/LocalDateTime;
    .restart local v2    # "dtBefore":Lorg/threeten/bp/LocalDateTime;
    .restart local v7    # "offsetAfter":Lorg/threeten/bp/ZoneOffset;
    .restart local v8    # "offsetBefore":Lorg/threeten/bp/ZoneOffset;
    :cond_6
    new-instance v5, Lorg/threeten/bp/zone/ZoneOffsetTransition;

    invoke-direct {v5, v1, v8, v7}, Lorg/threeten/bp/zone/ZoneOffsetTransition;-><init>(Lorg/threeten/bp/LocalDateTime;Lorg/threeten/bp/ZoneOffset;Lorg/threeten/bp/ZoneOffset;)V

    goto :goto_1

    .line 376
    .end local v1    # "dtAfter":Lorg/threeten/bp/LocalDateTime;
    .end local v2    # "dtBefore":Lorg/threeten/bp/LocalDateTime;
    .end local v7    # "offsetAfter":Lorg/threeten/bp/ZoneOffset;
    .end local v8    # "offsetBefore":Lorg/threeten/bp/ZoneOffset;
    :cond_7
    iget-object v11, p0, Lorg/threeten/bp/zone/StandardZoneRules;->wallOffsets:[Lorg/threeten/bp/ZoneOffset;

    div-int/lit8 v12, v4, 0x2

    add-int/lit8 v12, v12, 0x1

    aget-object v5, v11, v12

    goto :goto_1
.end method

.method static readExternal(Ljava/io/DataInput;)Lorg/threeten/bp/zone/StandardZoneRules;
    .locals 12
    .param p0, "in"    # Ljava/io/DataInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 245
    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    move-result v9

    .line 246
    .local v9, "stdSize":I
    new-array v1, v9, [J

    .line 247
    .local v1, "stdTrans":[J
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-ge v6, v9, :cond_0

    .line 248
    invoke-static {p0}, Lorg/threeten/bp/zone/Ser;->readEpochSec(Ljava/io/DataInput;)J

    move-result-wide v10

    aput-wide v10, v1, v6

    .line 247
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 250
    :cond_0
    add-int/lit8 v0, v9, 0x1

    new-array v2, v0, [Lorg/threeten/bp/ZoneOffset;

    .line 251
    .local v2, "stdOffsets":[Lorg/threeten/bp/ZoneOffset;
    const/4 v6, 0x0

    :goto_1
    array-length v0, v2

    if-ge v6, v0, :cond_1

    .line 252
    invoke-static {p0}, Lorg/threeten/bp/zone/Ser;->readOffset(Ljava/io/DataInput;)Lorg/threeten/bp/ZoneOffset;

    move-result-object v0

    aput-object v0, v2, v6

    .line 251
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 254
    :cond_1
    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    move-result v8

    .line 255
    .local v8, "savSize":I
    new-array v3, v8, [J

    .line 256
    .local v3, "savTrans":[J
    const/4 v6, 0x0

    :goto_2
    if-ge v6, v8, :cond_2

    .line 257
    invoke-static {p0}, Lorg/threeten/bp/zone/Ser;->readEpochSec(Ljava/io/DataInput;)J

    move-result-wide v10

    aput-wide v10, v3, v6

    .line 256
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 259
    :cond_2
    add-int/lit8 v0, v8, 0x1

    new-array v4, v0, [Lorg/threeten/bp/ZoneOffset;

    .line 260
    .local v4, "savOffsets":[Lorg/threeten/bp/ZoneOffset;
    const/4 v6, 0x0

    :goto_3
    array-length v0, v4

    if-ge v6, v0, :cond_3

    .line 261
    invoke-static {p0}, Lorg/threeten/bp/zone/Ser;->readOffset(Ljava/io/DataInput;)Lorg/threeten/bp/ZoneOffset;

    move-result-object v0

    aput-object v0, v4, v6

    .line 260
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 263
    :cond_3
    invoke-interface {p0}, Ljava/io/DataInput;->readByte()B

    move-result v7

    .line 264
    .local v7, "ruleSize":I
    new-array v5, v7, [Lorg/threeten/bp/zone/ZoneOffsetTransitionRule;

    .line 265
    .local v5, "rules":[Lorg/threeten/bp/zone/ZoneOffsetTransitionRule;
    const/4 v6, 0x0

    :goto_4
    if-ge v6, v7, :cond_4

    .line 266
    invoke-static {p0}, Lorg/threeten/bp/zone/ZoneOffsetTransitionRule;->readExternal(Ljava/io/DataInput;)Lorg/threeten/bp/zone/ZoneOffsetTransitionRule;

    move-result-object v0

    aput-object v0, v5, v6

    .line 265
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 268
    :cond_4
    new-instance v0, Lorg/threeten/bp/zone/StandardZoneRules;

    invoke-direct/range {v0 .. v5}, Lorg/threeten/bp/zone/StandardZoneRules;-><init>([J[Lorg/threeten/bp/ZoneOffset;[J[Lorg/threeten/bp/ZoneOffset;[Lorg/threeten/bp/zone/ZoneOffsetTransitionRule;)V

    return-object v0
.end method

.method private writeReplace()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 207
    new-instance v0, Lorg/threeten/bp/zone/Ser;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Lorg/threeten/bp/zone/Ser;-><init>(BLjava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 571
    if-ne p0, p1, :cond_1

    .line 585
    .end local p1    # "obj":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v1

    .line 574
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_1
    instance-of v3, p1, Lorg/threeten/bp/zone/StandardZoneRules;

    if-eqz v3, :cond_3

    move-object v0, p1

    .line 575
    check-cast v0, Lorg/threeten/bp/zone/StandardZoneRules;

    .line 576
    .local v0, "other":Lorg/threeten/bp/zone/StandardZoneRules;
    iget-object v3, p0, Lorg/threeten/bp/zone/StandardZoneRules;->standardTransitions:[J

    iget-object v4, v0, Lorg/threeten/bp/zone/StandardZoneRules;->standardTransitions:[J

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([J[J)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lorg/threeten/bp/zone/StandardZoneRules;->standardOffsets:[Lorg/threeten/bp/ZoneOffset;

    iget-object v4, v0, Lorg/threeten/bp/zone/StandardZoneRules;->standardOffsets:[Lorg/threeten/bp/ZoneOffset;

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lorg/threeten/bp/zone/StandardZoneRules;->savingsInstantTransitions:[J

    iget-object v4, v0, Lorg/threeten/bp/zone/StandardZoneRules;->savingsInstantTransitions:[J

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([J[J)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lorg/threeten/bp/zone/StandardZoneRules;->wallOffsets:[Lorg/threeten/bp/ZoneOffset;

    iget-object v4, v0, Lorg/threeten/bp/zone/StandardZoneRules;->wallOffsets:[Lorg/threeten/bp/ZoneOffset;

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lorg/threeten/bp/zone/StandardZoneRules;->lastRules:[Lorg/threeten/bp/zone/ZoneOffsetTransitionRule;

    iget-object v4, v0, Lorg/threeten/bp/zone/StandardZoneRules;->lastRules:[Lorg/threeten/bp/zone/ZoneOffsetTransitionRule;

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_2
    move v1, v2

    goto :goto_0

    .line 582
    .end local v0    # "other":Lorg/threeten/bp/zone/StandardZoneRules;
    :cond_3
    instance-of v3, p1, Lorg/threeten/bp/zone/ZoneRules$Fixed;

    if-eqz v3, :cond_5

    .line 583
    invoke-virtual {p0}, Lorg/threeten/bp/zone/StandardZoneRules;->isFixedOffset()Z

    move-result v3

    if-eqz v3, :cond_4

    sget-object v3, Lorg/threeten/bp/Instant;->EPOCH:Lorg/threeten/bp/Instant;

    invoke-virtual {p0, v3}, Lorg/threeten/bp/zone/StandardZoneRules;->getOffset(Lorg/threeten/bp/Instant;)Lorg/threeten/bp/ZoneOffset;

    move-result-object v3

    check-cast p1, Lorg/threeten/bp/zone/ZoneRules$Fixed;

    .end local p1    # "obj":Ljava/lang/Object;
    sget-object v4, Lorg/threeten/bp/Instant;->EPOCH:Lorg/threeten/bp/Instant;

    invoke-virtual {p1, v4}, Lorg/threeten/bp/zone/ZoneRules$Fixed;->getOffset(Lorg/threeten/bp/Instant;)Lorg/threeten/bp/ZoneOffset;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/threeten/bp/ZoneOffset;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_4
    move v1, v2

    goto :goto_0

    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_5
    move v1, v2

    .line 585
    goto :goto_0
.end method

.method public getDaylightSavings(Lorg/threeten/bp/Instant;)Lorg/threeten/bp/Duration;
    .locals 4
    .param p1, "instant"    # Lorg/threeten/bp/Instant;

    .prologue
    .line 453
    invoke-virtual {p0, p1}, Lorg/threeten/bp/zone/StandardZoneRules;->getStandardOffset(Lorg/threeten/bp/Instant;)Lorg/threeten/bp/ZoneOffset;

    move-result-object v1

    .line 454
    .local v1, "standardOffset":Lorg/threeten/bp/ZoneOffset;
    invoke-virtual {p0, p1}, Lorg/threeten/bp/zone/StandardZoneRules;->getOffset(Lorg/threeten/bp/Instant;)Lorg/threeten/bp/ZoneOffset;

    move-result-object v0

    .line 455
    .local v0, "actualOffset":Lorg/threeten/bp/ZoneOffset;
    invoke-virtual {v0}, Lorg/threeten/bp/ZoneOffset;->getTotalSeconds()I

    move-result v2

    invoke-virtual {v1}, Lorg/threeten/bp/ZoneOffset;->getTotalSeconds()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-long v2, v2

    invoke-static {v2, v3}, Lorg/threeten/bp/Duration;->ofSeconds(J)Lorg/threeten/bp/Duration;

    move-result-object v2

    return-object v2
.end method

.method public getOffset(Lorg/threeten/bp/Instant;)Lorg/threeten/bp/ZoneOffset;
    .locals 10
    .param p1, "instant"    # Lorg/threeten/bp/Instant;

    .prologue
    .line 280
    invoke-virtual {p1}, Lorg/threeten/bp/Instant;->getEpochSecond()J

    move-result-wide v0

    .line 283
    .local v0, "epochSec":J
    iget-object v7, p0, Lorg/threeten/bp/zone/StandardZoneRules;->lastRules:[Lorg/threeten/bp/zone/ZoneOffsetTransitionRule;

    array-length v7, v7

    if-lez v7, :cond_2

    iget-object v7, p0, Lorg/threeten/bp/zone/StandardZoneRules;->savingsInstantTransitions:[J

    iget-object v8, p0, Lorg/threeten/bp/zone/StandardZoneRules;->savingsInstantTransitions:[J

    array-length v8, v8

    add-int/lit8 v8, v8, -0x1

    aget-wide v8, v7, v8

    cmp-long v7, v0, v8

    if-lez v7, :cond_2

    .line 285
    iget-object v7, p0, Lorg/threeten/bp/zone/StandardZoneRules;->wallOffsets:[Lorg/threeten/bp/ZoneOffset;

    iget-object v8, p0, Lorg/threeten/bp/zone/StandardZoneRules;->wallOffsets:[Lorg/threeten/bp/ZoneOffset;

    array-length v8, v8

    add-int/lit8 v8, v8, -0x1

    aget-object v7, v7, v8

    invoke-direct {p0, v0, v1, v7}, Lorg/threeten/bp/zone/StandardZoneRules;->findYear(JLorg/threeten/bp/ZoneOffset;)I

    move-result v6

    .line 286
    .local v6, "year":I
    invoke-direct {p0, v6}, Lorg/threeten/bp/zone/StandardZoneRules;->findTransitionArray(I)[Lorg/threeten/bp/zone/ZoneOffsetTransition;

    move-result-object v5

    .line 287
    .local v5, "transArray":[Lorg/threeten/bp/zone/ZoneOffsetTransition;
    const/4 v4, 0x0

    .line 288
    .local v4, "trans":Lorg/threeten/bp/zone/ZoneOffsetTransition;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v7, v5

    if-ge v2, v7, :cond_1

    .line 289
    aget-object v4, v5, v2

    .line 290
    invoke-virtual {v4}, Lorg/threeten/bp/zone/ZoneOffsetTransition;->toEpochSecond()J

    move-result-wide v8

    cmp-long v7, v0, v8

    if-gez v7, :cond_0

    .line 291
    invoke-virtual {v4}, Lorg/threeten/bp/zone/ZoneOffsetTransition;->getOffsetBefore()Lorg/threeten/bp/ZoneOffset;

    move-result-object v7

    .line 303
    .end local v2    # "i":I
    .end local v4    # "trans":Lorg/threeten/bp/zone/ZoneOffsetTransition;
    .end local v5    # "transArray":[Lorg/threeten/bp/zone/ZoneOffsetTransition;
    .end local v6    # "year":I
    :goto_1
    return-object v7

    .line 288
    .restart local v2    # "i":I
    .restart local v4    # "trans":Lorg/threeten/bp/zone/ZoneOffsetTransition;
    .restart local v5    # "transArray":[Lorg/threeten/bp/zone/ZoneOffsetTransition;
    .restart local v6    # "year":I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 294
    :cond_1
    invoke-virtual {v4}, Lorg/threeten/bp/zone/ZoneOffsetTransition;->getOffsetAfter()Lorg/threeten/bp/ZoneOffset;

    move-result-object v7

    goto :goto_1

    .line 298
    .end local v2    # "i":I
    .end local v4    # "trans":Lorg/threeten/bp/zone/ZoneOffsetTransition;
    .end local v5    # "transArray":[Lorg/threeten/bp/zone/ZoneOffsetTransition;
    .end local v6    # "year":I
    :cond_2
    iget-object v7, p0, Lorg/threeten/bp/zone/StandardZoneRules;->savingsInstantTransitions:[J

    invoke-static {v7, v0, v1}, Ljava/util/Arrays;->binarySearch([JJ)I

    move-result v3

    .line 299
    .local v3, "index":I
    if-gez v3, :cond_3

    .line 301
    neg-int v7, v3

    add-int/lit8 v3, v7, -0x2

    .line 303
    :cond_3
    iget-object v7, p0, Lorg/threeten/bp/zone/StandardZoneRules;->wallOffsets:[Lorg/threeten/bp/ZoneOffset;

    add-int/lit8 v8, v3, 0x1

    aget-object v7, v7, v8

    goto :goto_1
.end method

.method public getOffset(Lorg/threeten/bp/LocalDateTime;)Lorg/threeten/bp/ZoneOffset;
    .locals 2
    .param p1, "localDateTime"    # Lorg/threeten/bp/LocalDateTime;

    .prologue
    .line 309
    invoke-direct {p0, p1}, Lorg/threeten/bp/zone/StandardZoneRules;->getOffsetInfo(Lorg/threeten/bp/LocalDateTime;)Ljava/lang/Object;

    move-result-object v0

    .line 310
    .local v0, "info":Ljava/lang/Object;
    instance-of v1, v0, Lorg/threeten/bp/zone/ZoneOffsetTransition;

    if-eqz v1, :cond_0

    .line 311
    check-cast v0, Lorg/threeten/bp/zone/ZoneOffsetTransition;

    .end local v0    # "info":Ljava/lang/Object;
    invoke-virtual {v0}, Lorg/threeten/bp/zone/ZoneOffsetTransition;->getOffsetBefore()Lorg/threeten/bp/ZoneOffset;

    move-result-object v0

    .line 313
    :goto_0
    return-object v0

    .restart local v0    # "info":Ljava/lang/Object;
    :cond_0
    check-cast v0, Lorg/threeten/bp/ZoneOffset;

    goto :goto_0
.end method

.method public getStandardOffset(Lorg/threeten/bp/Instant;)Lorg/threeten/bp/ZoneOffset;
    .locals 5
    .param p1, "instant"    # Lorg/threeten/bp/Instant;

    .prologue
    .line 442
    invoke-virtual {p1}, Lorg/threeten/bp/Instant;->getEpochSecond()J

    move-result-wide v0

    .line 443
    .local v0, "epochSec":J
    iget-object v3, p0, Lorg/threeten/bp/zone/StandardZoneRules;->standardTransitions:[J

    invoke-static {v3, v0, v1}, Ljava/util/Arrays;->binarySearch([JJ)I

    move-result v2

    .line 444
    .local v2, "index":I
    if-gez v2, :cond_0

    .line 446
    neg-int v3, v2

    add-int/lit8 v2, v3, -0x2

    .line 448
    :cond_0
    iget-object v3, p0, Lorg/threeten/bp/zone/StandardZoneRules;->standardOffsets:[Lorg/threeten/bp/ZoneOffset;

    add-int/lit8 v4, v2, 0x1

    aget-object v3, v3, v4

    return-object v3
.end method

.method public getTransition(Lorg/threeten/bp/LocalDateTime;)Lorg/threeten/bp/zone/ZoneOffsetTransition;
    .locals 2
    .param p1, "localDateTime"    # Lorg/threeten/bp/LocalDateTime;

    .prologue
    .line 328
    invoke-direct {p0, p1}, Lorg/threeten/bp/zone/StandardZoneRules;->getOffsetInfo(Lorg/threeten/bp/LocalDateTime;)Ljava/lang/Object;

    move-result-object v0

    .line 329
    .local v0, "info":Ljava/lang/Object;
    instance-of v1, v0, Lorg/threeten/bp/zone/ZoneOffsetTransition;

    if-eqz v1, :cond_0

    check-cast v0, Lorg/threeten/bp/zone/ZoneOffsetTransition;

    .end local v0    # "info":Ljava/lang/Object;
    :goto_0
    return-object v0

    .restart local v0    # "info":Ljava/lang/Object;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getTransitionRules()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/threeten/bp/zone/ZoneOffsetTransitionRule;",
            ">;"
        }
    .end annotation

    .prologue
    .line 565
    iget-object v0, p0, Lorg/threeten/bp/zone/StandardZoneRules;->lastRules:[Lorg/threeten/bp/zone/ZoneOffsetTransitionRule;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getTransitions()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/threeten/bp/zone/ZoneOffsetTransition;",
            ">;"
        }
    .end annotation

    .prologue
    .line 556
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 557
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Lorg/threeten/bp/zone/ZoneOffsetTransition;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lorg/threeten/bp/zone/StandardZoneRules;->savingsInstantTransitions:[J

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 558
    new-instance v2, Lorg/threeten/bp/zone/ZoneOffsetTransition;

    iget-object v3, p0, Lorg/threeten/bp/zone/StandardZoneRules;->savingsInstantTransitions:[J

    aget-wide v4, v3, v0

    iget-object v3, p0, Lorg/threeten/bp/zone/StandardZoneRules;->wallOffsets:[Lorg/threeten/bp/ZoneOffset;

    aget-object v3, v3, v0

    iget-object v6, p0, Lorg/threeten/bp/zone/StandardZoneRules;->wallOffsets:[Lorg/threeten/bp/ZoneOffset;

    add-int/lit8 v7, v0, 0x1

    aget-object v6, v6, v7

    invoke-direct {v2, v4, v5, v3, v6}, Lorg/threeten/bp/zone/ZoneOffsetTransition;-><init>(JLorg/threeten/bp/ZoneOffset;Lorg/threeten/bp/ZoneOffset;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 557
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 560
    :cond_0
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    return-object v2
.end method

.method public getValidOffsets(Lorg/threeten/bp/LocalDateTime;)Ljava/util/List;
    .locals 2
    .param p1, "localDateTime"    # Lorg/threeten/bp/LocalDateTime;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/threeten/bp/LocalDateTime;",
            ")",
            "Ljava/util/List",
            "<",
            "Lorg/threeten/bp/ZoneOffset;",
            ">;"
        }
    .end annotation

    .prologue
    .line 319
    invoke-direct {p0, p1}, Lorg/threeten/bp/zone/StandardZoneRules;->getOffsetInfo(Lorg/threeten/bp/LocalDateTime;)Ljava/lang/Object;

    move-result-object v0

    .line 320
    .local v0, "info":Ljava/lang/Object;
    instance-of v1, v0, Lorg/threeten/bp/zone/ZoneOffsetTransition;

    if-eqz v1, :cond_0

    .line 321
    check-cast v0, Lorg/threeten/bp/zone/ZoneOffsetTransition;

    .end local v0    # "info":Ljava/lang/Object;
    invoke-virtual {v0}, Lorg/threeten/bp/zone/ZoneOffsetTransition;->getValidOffsets()Ljava/util/List;

    move-result-object v1

    .line 323
    :goto_0
    return-object v1

    .restart local v0    # "info":Ljava/lang/Object;
    :cond_0
    check-cast v0, Lorg/threeten/bp/ZoneOffset;

    .end local v0    # "info":Ljava/lang/Object;
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 590
    iget-object v0, p0, Lorg/threeten/bp/zone/StandardZoneRules;->standardTransitions:[J

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([J)I

    move-result v0

    iget-object v1, p0, Lorg/threeten/bp/zone/StandardZoneRules;->standardOffsets:[Lorg/threeten/bp/ZoneOffset;

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    xor-int/2addr v0, v1

    iget-object v1, p0, Lorg/threeten/bp/zone/StandardZoneRules;->savingsInstantTransitions:[J

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([J)I

    move-result v1

    xor-int/2addr v0, v1

    iget-object v1, p0, Lorg/threeten/bp/zone/StandardZoneRules;->wallOffsets:[Lorg/threeten/bp/ZoneOffset;

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    xor-int/2addr v0, v1

    iget-object v1, p0, Lorg/threeten/bp/zone/StandardZoneRules;->lastRules:[Lorg/threeten/bp/zone/ZoneOffsetTransitionRule;

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public isDaylightSavings(Lorg/threeten/bp/Instant;)Z
    .locals 2
    .param p1, "instant"    # Lorg/threeten/bp/Instant;

    .prologue
    .line 460
    invoke-virtual {p0, p1}, Lorg/threeten/bp/zone/StandardZoneRules;->getStandardOffset(Lorg/threeten/bp/Instant;)Lorg/threeten/bp/ZoneOffset;

    move-result-object v0

    invoke-virtual {p0, p1}, Lorg/threeten/bp/zone/StandardZoneRules;->getOffset(Lorg/threeten/bp/Instant;)Lorg/threeten/bp/ZoneOffset;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/threeten/bp/ZoneOffset;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFixedOffset()Z
    .locals 1

    .prologue
    .line 274
    iget-object v0, p0, Lorg/threeten/bp/zone/StandardZoneRules;->savingsInstantTransitions:[J

    array-length v0, v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isValidOffset(Lorg/threeten/bp/LocalDateTime;Lorg/threeten/bp/ZoneOffset;)Z
    .locals 1
    .param p1, "localDateTime"    # Lorg/threeten/bp/LocalDateTime;
    .param p2, "offset"    # Lorg/threeten/bp/ZoneOffset;

    .prologue
    .line 412
    invoke-virtual {p0, p1}, Lorg/threeten/bp/zone/StandardZoneRules;->getValidOffsets(Lorg/threeten/bp/LocalDateTime;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public nextTransition(Lorg/threeten/bp/Instant;)Lorg/threeten/bp/zone/ZoneOffsetTransition;
    .locals 14
    .param p1, "instant"    # Lorg/threeten/bp/Instant;

    .prologue
    const/4 v9, 0x0

    .line 466
    iget-object v10, p0, Lorg/threeten/bp/zone/StandardZoneRules;->savingsInstantTransitions:[J

    array-length v10, v10

    if-nez v10, :cond_1

    move-object v6, v9

    .line 500
    :cond_0
    :goto_0
    return-object v6

    .line 470
    :cond_1
    invoke-virtual {p1}, Lorg/threeten/bp/Instant;->getEpochSecond()J

    move-result-wide v2

    .line 473
    .local v2, "epochSec":J
    iget-object v10, p0, Lorg/threeten/bp/zone/StandardZoneRules;->savingsInstantTransitions:[J

    iget-object v11, p0, Lorg/threeten/bp/zone/StandardZoneRules;->savingsInstantTransitions:[J

    array-length v11, v11

    add-int/lit8 v11, v11, -0x1

    aget-wide v10, v10, v11

    cmp-long v10, v2, v10

    if-ltz v10, :cond_5

    .line 474
    iget-object v10, p0, Lorg/threeten/bp/zone/StandardZoneRules;->lastRules:[Lorg/threeten/bp/zone/ZoneOffsetTransitionRule;

    array-length v10, v10

    if-nez v10, :cond_2

    move-object v6, v9

    .line 475
    goto :goto_0

    .line 478
    :cond_2
    iget-object v10, p0, Lorg/threeten/bp/zone/StandardZoneRules;->wallOffsets:[Lorg/threeten/bp/ZoneOffset;

    iget-object v11, p0, Lorg/threeten/bp/zone/StandardZoneRules;->wallOffsets:[Lorg/threeten/bp/ZoneOffset;

    array-length v11, v11

    add-int/lit8 v11, v11, -0x1

    aget-object v10, v10, v11

    invoke-direct {p0, v2, v3, v10}, Lorg/threeten/bp/zone/StandardZoneRules;->findYear(JLorg/threeten/bp/ZoneOffset;)I

    move-result v8

    .line 479
    .local v8, "year":I
    invoke-direct {p0, v8}, Lorg/threeten/bp/zone/StandardZoneRules;->findTransitionArray(I)[Lorg/threeten/bp/zone/ZoneOffsetTransition;

    move-result-object v7

    .line 480
    .local v7, "transArray":[Lorg/threeten/bp/zone/ZoneOffsetTransition;
    move-object v0, v7

    .local v0, "arr$":[Lorg/threeten/bp/zone/ZoneOffsetTransition;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_1
    if-ge v1, v5, :cond_3

    aget-object v6, v0, v1

    .line 481
    .local v6, "trans":Lorg/threeten/bp/zone/ZoneOffsetTransition;
    invoke-virtual {v6}, Lorg/threeten/bp/zone/ZoneOffsetTransition;->toEpochSecond()J

    move-result-wide v10

    cmp-long v10, v2, v10

    if-ltz v10, :cond_0

    .line 480
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 486
    .end local v6    # "trans":Lorg/threeten/bp/zone/ZoneOffsetTransition;
    :cond_3
    const v10, 0x3b9ac9ff

    if-ge v8, v10, :cond_4

    .line 487
    add-int/lit8 v9, v8, 0x1

    invoke-direct {p0, v9}, Lorg/threeten/bp/zone/StandardZoneRules;->findTransitionArray(I)[Lorg/threeten/bp/zone/ZoneOffsetTransition;

    move-result-object v7

    .line 488
    const/4 v9, 0x0

    aget-object v6, v7, v9

    goto :goto_0

    :cond_4
    move-object v6, v9

    .line 490
    goto :goto_0

    .line 494
    .end local v0    # "arr$":[Lorg/threeten/bp/zone/ZoneOffsetTransition;
    .end local v1    # "i$":I
    .end local v5    # "len$":I
    .end local v7    # "transArray":[Lorg/threeten/bp/zone/ZoneOffsetTransition;
    .end local v8    # "year":I
    :cond_5
    iget-object v9, p0, Lorg/threeten/bp/zone/StandardZoneRules;->savingsInstantTransitions:[J

    invoke-static {v9, v2, v3}, Ljava/util/Arrays;->binarySearch([JJ)I

    move-result v4

    .line 495
    .local v4, "index":I
    if-gez v4, :cond_6

    .line 496
    neg-int v9, v4

    add-int/lit8 v4, v9, -0x1

    .line 500
    :goto_2
    new-instance v6, Lorg/threeten/bp/zone/ZoneOffsetTransition;

    iget-object v9, p0, Lorg/threeten/bp/zone/StandardZoneRules;->savingsInstantTransitions:[J

    aget-wide v10, v9, v4

    iget-object v9, p0, Lorg/threeten/bp/zone/StandardZoneRules;->wallOffsets:[Lorg/threeten/bp/ZoneOffset;

    aget-object v9, v9, v4

    iget-object v12, p0, Lorg/threeten/bp/zone/StandardZoneRules;->wallOffsets:[Lorg/threeten/bp/ZoneOffset;

    add-int/lit8 v13, v4, 0x1

    aget-object v12, v12, v13

    invoke-direct {v6, v10, v11, v9, v12}, Lorg/threeten/bp/zone/ZoneOffsetTransition;-><init>(JLorg/threeten/bp/ZoneOffset;Lorg/threeten/bp/ZoneOffset;)V

    goto :goto_0

    .line 498
    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_2
.end method

.method public previousTransition(Lorg/threeten/bp/Instant;)Lorg/threeten/bp/zone/ZoneOffsetTransition;
    .locals 15
    .param p1, "instant"    # Lorg/threeten/bp/Instant;

    .prologue
    .line 505
    iget-object v10, p0, Lorg/threeten/bp/zone/StandardZoneRules;->savingsInstantTransitions:[J

    array-length v10, v10

    if-nez v10, :cond_0

    .line 506
    const/4 v10, 0x0

    .line 543
    :goto_0
    return-object v10

    .line 509
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lorg/threeten/bp/Instant;->getEpochSecond()J

    move-result-wide v0

    .line 510
    .local v0, "epochSec":J
    invoke-virtual/range {p1 .. p1}, Lorg/threeten/bp/Instant;->getNano()I

    move-result v10

    if-lez v10, :cond_1

    const-wide v10, 0x7fffffffffffffffL

    cmp-long v10, v0, v10

    if-gez v10, :cond_1

    .line 511
    const-wide/16 v10, 0x1

    add-long/2addr v0, v10

    .line 515
    :cond_1
    iget-object v10, p0, Lorg/threeten/bp/zone/StandardZoneRules;->savingsInstantTransitions:[J

    iget-object v11, p0, Lorg/threeten/bp/zone/StandardZoneRules;->savingsInstantTransitions:[J

    array-length v11, v11

    add-int/lit8 v11, v11, -0x1

    aget-wide v4, v10, v11

    .line 516
    .local v4, "lastHistoric":J
    iget-object v10, p0, Lorg/threeten/bp/zone/StandardZoneRules;->lastRules:[Lorg/threeten/bp/zone/ZoneOffsetTransitionRule;

    array-length v10, v10

    if-lez v10, :cond_4

    cmp-long v10, v0, v4

    if-lez v10, :cond_4

    .line 518
    iget-object v10, p0, Lorg/threeten/bp/zone/StandardZoneRules;->wallOffsets:[Lorg/threeten/bp/ZoneOffset;

    iget-object v11, p0, Lorg/threeten/bp/zone/StandardZoneRules;->wallOffsets:[Lorg/threeten/bp/ZoneOffset;

    array-length v11, v11

    add-int/lit8 v11, v11, -0x1

    aget-object v6, v10, v11

    .line 519
    .local v6, "lastHistoricOffset":Lorg/threeten/bp/ZoneOffset;
    invoke-direct {p0, v0, v1, v6}, Lorg/threeten/bp/zone/StandardZoneRules;->findYear(JLorg/threeten/bp/ZoneOffset;)I

    move-result v9

    .line 520
    .local v9, "year":I
    invoke-direct {p0, v9}, Lorg/threeten/bp/zone/StandardZoneRules;->findTransitionArray(I)[Lorg/threeten/bp/zone/ZoneOffsetTransition;

    move-result-object v8

    .line 521
    .local v8, "transArray":[Lorg/threeten/bp/zone/ZoneOffsetTransition;
    array-length v10, v8

    add-int/lit8 v2, v10, -0x1

    .local v2, "i":I
    :goto_1
    if-ltz v2, :cond_3

    .line 522
    aget-object v10, v8, v2

    invoke-virtual {v10}, Lorg/threeten/bp/zone/ZoneOffsetTransition;->toEpochSecond()J

    move-result-wide v10

    cmp-long v10, v0, v10

    if-lez v10, :cond_2

    .line 523
    aget-object v10, v8, v2

    goto :goto_0

    .line 521
    :cond_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 527
    :cond_3
    invoke-direct {p0, v4, v5, v6}, Lorg/threeten/bp/zone/StandardZoneRules;->findYear(JLorg/threeten/bp/ZoneOffset;)I

    move-result v7

    .line 528
    .local v7, "lastHistoricYear":I
    add-int/lit8 v9, v9, -0x1

    if-le v9, v7, :cond_4

    .line 529
    invoke-direct {p0, v9}, Lorg/threeten/bp/zone/StandardZoneRules;->findTransitionArray(I)[Lorg/threeten/bp/zone/ZoneOffsetTransition;

    move-result-object v8

    .line 530
    array-length v10, v8

    add-int/lit8 v10, v10, -0x1

    aget-object v10, v8, v10

    goto :goto_0

    .line 536
    .end local v2    # "i":I
    .end local v6    # "lastHistoricOffset":Lorg/threeten/bp/ZoneOffset;
    .end local v7    # "lastHistoricYear":I
    .end local v8    # "transArray":[Lorg/threeten/bp/zone/ZoneOffsetTransition;
    .end local v9    # "year":I
    :cond_4
    iget-object v10, p0, Lorg/threeten/bp/zone/StandardZoneRules;->savingsInstantTransitions:[J

    invoke-static {v10, v0, v1}, Ljava/util/Arrays;->binarySearch([JJ)I

    move-result v3

    .line 537
    .local v3, "index":I
    if-gez v3, :cond_5

    .line 538
    neg-int v10, v3

    add-int/lit8 v3, v10, -0x1

    .line 540
    :cond_5
    if-gtz v3, :cond_6

    .line 541
    const/4 v10, 0x0

    goto :goto_0

    .line 543
    :cond_6
    new-instance v10, Lorg/threeten/bp/zone/ZoneOffsetTransition;

    iget-object v11, p0, Lorg/threeten/bp/zone/StandardZoneRules;->savingsInstantTransitions:[J

    add-int/lit8 v12, v3, -0x1

    aget-wide v12, v11, v12

    iget-object v11, p0, Lorg/threeten/bp/zone/StandardZoneRules;->wallOffsets:[Lorg/threeten/bp/ZoneOffset;

    add-int/lit8 v14, v3, -0x1

    aget-object v11, v11, v14

    iget-object v14, p0, Lorg/threeten/bp/zone/StandardZoneRules;->wallOffsets:[Lorg/threeten/bp/ZoneOffset;

    aget-object v14, v14, v3

    invoke-direct {v10, v12, v13, v11, v14}, Lorg/threeten/bp/zone/ZoneOffsetTransition;-><init>(JLorg/threeten/bp/ZoneOffset;Lorg/threeten/bp/ZoneOffset;)V

    goto/16 :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 605
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "StandardZoneRules[currentStandardOffset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/threeten/bp/zone/StandardZoneRules;->standardOffsets:[Lorg/threeten/bp/ZoneOffset;

    iget-object v2, p0, Lorg/threeten/bp/zone/StandardZoneRules;->standardOffsets:[Lorg/threeten/bp/ZoneOffset;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method writeExternal(Ljava/io/DataOutput;)V
    .locals 8
    .param p1, "out"    # Ljava/io/DataOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 217
    iget-object v5, p0, Lorg/threeten/bp/zone/StandardZoneRules;->standardTransitions:[J

    array-length v5, v5

    invoke-interface {p1, v5}, Ljava/io/DataOutput;->writeInt(I)V

    .line 218
    iget-object v0, p0, Lorg/threeten/bp/zone/StandardZoneRules;->standardTransitions:[J

    .local v0, "arr$":[J
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-wide v6, v0, v1

    .line 219
    .local v6, "trans":J
    invoke-static {v6, v7, p1}, Lorg/threeten/bp/zone/Ser;->writeEpochSec(JLjava/io/DataOutput;)V

    .line 218
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 221
    .end local v6    # "trans":J
    :cond_0
    iget-object v0, p0, Lorg/threeten/bp/zone/StandardZoneRules;->standardOffsets:[Lorg/threeten/bp/ZoneOffset;

    .local v0, "arr$":[Lorg/threeten/bp/ZoneOffset;
    array-length v2, v0

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 222
    .local v3, "offset":Lorg/threeten/bp/ZoneOffset;
    invoke-static {v3, p1}, Lorg/threeten/bp/zone/Ser;->writeOffset(Lorg/threeten/bp/ZoneOffset;Ljava/io/DataOutput;)V

    .line 221
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 224
    .end local v3    # "offset":Lorg/threeten/bp/ZoneOffset;
    :cond_1
    iget-object v5, p0, Lorg/threeten/bp/zone/StandardZoneRules;->savingsInstantTransitions:[J

    array-length v5, v5

    invoke-interface {p1, v5}, Ljava/io/DataOutput;->writeInt(I)V

    .line 225
    iget-object v0, p0, Lorg/threeten/bp/zone/StandardZoneRules;->savingsInstantTransitions:[J

    .local v0, "arr$":[J
    array-length v2, v0

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v2, :cond_2

    aget-wide v6, v0, v1

    .line 226
    .restart local v6    # "trans":J
    invoke-static {v6, v7, p1}, Lorg/threeten/bp/zone/Ser;->writeEpochSec(JLjava/io/DataOutput;)V

    .line 225
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 228
    .end local v6    # "trans":J
    :cond_2
    iget-object v0, p0, Lorg/threeten/bp/zone/StandardZoneRules;->wallOffsets:[Lorg/threeten/bp/ZoneOffset;

    .local v0, "arr$":[Lorg/threeten/bp/ZoneOffset;
    array-length v2, v0

    const/4 v1, 0x0

    :goto_3
    if-ge v1, v2, :cond_3

    aget-object v3, v0, v1

    .line 229
    .restart local v3    # "offset":Lorg/threeten/bp/ZoneOffset;
    invoke-static {v3, p1}, Lorg/threeten/bp/zone/Ser;->writeOffset(Lorg/threeten/bp/ZoneOffset;Ljava/io/DataOutput;)V

    .line 228
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 231
    .end local v3    # "offset":Lorg/threeten/bp/ZoneOffset;
    :cond_3
    iget-object v5, p0, Lorg/threeten/bp/zone/StandardZoneRules;->lastRules:[Lorg/threeten/bp/zone/ZoneOffsetTransitionRule;

    array-length v5, v5

    invoke-interface {p1, v5}, Ljava/io/DataOutput;->writeByte(I)V

    .line 232
    iget-object v0, p0, Lorg/threeten/bp/zone/StandardZoneRules;->lastRules:[Lorg/threeten/bp/zone/ZoneOffsetTransitionRule;

    .local v0, "arr$":[Lorg/threeten/bp/zone/ZoneOffsetTransitionRule;
    array-length v2, v0

    const/4 v1, 0x0

    :goto_4
    if-ge v1, v2, :cond_4

    aget-object v4, v0, v1

    .line 233
    .local v4, "rule":Lorg/threeten/bp/zone/ZoneOffsetTransitionRule;
    invoke-virtual {v4, p1}, Lorg/threeten/bp/zone/ZoneOffsetTransitionRule;->writeExternal(Ljava/io/DataOutput;)V

    .line 232
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 235
    .end local v4    # "rule":Lorg/threeten/bp/zone/ZoneOffsetTransitionRule;
    :cond_4
    return-void
.end method
