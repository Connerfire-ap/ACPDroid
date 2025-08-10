.class public abstract Lorg/threeten/bp/zone/ZoneRulesProvider;
.super Ljava/lang/Object;
.source "ZoneRulesProvider.java"


# static fields
.field private static final PROVIDERS:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lorg/threeten/bp/zone/ZoneRulesProvider;",
            ">;"
        }
    .end annotation
.end field

.field private static final ZONES:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/lang/String;",
            "Lorg/threeten/bp/zone/ZoneRulesProvider;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    .line 78
    new-instance v4, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    sput-object v4, Lorg/threeten/bp/zone/ZoneRulesProvider;->PROVIDERS:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 82
    new-instance v4, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v5, 0x200

    const/high16 v6, 0x3f400000    # 0.75f

    const/4 v7, 0x2

    invoke-direct {v4, v5, v6, v7}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    sput-object v4, Lorg/threeten/bp/zone/ZoneRulesProvider;->ZONES:Ljava/util/concurrent/ConcurrentMap;

    .line 84
    const-class v4, Lorg/threeten/bp/zone/ZoneRulesProvider;

    const-class v5, Lorg/threeten/bp/zone/ZoneRulesProvider;

    invoke-virtual {v5}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    invoke-static {v4, v5}, Ljava/util/ServiceLoader;->load(Ljava/lang/Class;Ljava/lang/ClassLoader;)Ljava/util/ServiceLoader;

    move-result-object v2

    .line 85
    .local v2, "loader":Ljava/util/ServiceLoader;, "Ljava/util/ServiceLoader<Lorg/threeten/bp/zone/ZoneRulesProvider;>;"
    invoke-virtual {v2}, Ljava/util/ServiceLoader;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/threeten/bp/zone/ZoneRulesProvider;

    .line 87
    .local v3, "provider":Lorg/threeten/bp/zone/ZoneRulesProvider;
    :try_start_0
    invoke-static {v3}, Lorg/threeten/bp/zone/ZoneRulesProvider;->registerProvider0(Lorg/threeten/bp/zone/ZoneRulesProvider;)V
    :try_end_0
    .catch Ljava/util/ServiceConfigurationError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 88
    :catch_0
    move-exception v0

    .line 89
    .local v0, "ex":Ljava/util/ServiceConfigurationError;
    invoke-virtual {v0}, Ljava/util/ServiceConfigurationError;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    instance-of v4, v4, Ljava/lang/SecurityException;

    if-nez v4, :cond_0

    .line 90
    throw v0

    .line 94
    .end local v0    # "ex":Ljava/util/ServiceConfigurationError;
    .end local v3    # "provider":Lorg/threeten/bp/zone/ZoneRulesProvider;
    :cond_1
    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 250
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 251
    return-void
.end method

.method public static getAvailableZoneIds()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 105
    new-instance v0, Ljava/util/HashSet;

    sget-object v1, Lorg/threeten/bp/zone/ZoneRulesProvider;->ZONES:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1}, Ljava/util/concurrent/ConcurrentMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method private static getProvider(Ljava/lang/String;)Lorg/threeten/bp/zone/ZoneRulesProvider;
    .locals 4
    .param p0, "zoneId"    # Ljava/lang/String;

    .prologue
    .line 173
    sget-object v1, Lorg/threeten/bp/zone/ZoneRulesProvider;->ZONES:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, p0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/threeten/bp/zone/ZoneRulesProvider;

    .line 174
    .local v0, "provider":Lorg/threeten/bp/zone/ZoneRulesProvider;
    if-nez v0, :cond_1

    .line 175
    sget-object v1, Lorg/threeten/bp/zone/ZoneRulesProvider;->ZONES:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1}, Ljava/util/concurrent/ConcurrentMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 176
    new-instance v1, Lorg/threeten/bp/zone/ZoneRulesException;

    const-string v2, "No time-zone data files registered"

    invoke-direct {v1, v2}, Lorg/threeten/bp/zone/ZoneRulesException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 178
    :cond_0
    new-instance v1, Lorg/threeten/bp/zone/ZoneRulesException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown time-zone ID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/threeten/bp/zone/ZoneRulesException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 180
    :cond_1
    return-object v0
.end method

.method public static getRules(Ljava/lang/String;Z)Lorg/threeten/bp/zone/ZoneRules;
    .locals 1
    .param p0, "zoneId"    # Ljava/lang/String;
    .param p1, "forCaching"    # Z

    .prologue
    .line 132
    const-string v0, "zoneId"

    invoke-static {p0, v0}, Lorg/threeten/bp/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 133
    invoke-static {p0}, Lorg/threeten/bp/zone/ZoneRulesProvider;->getProvider(Ljava/lang/String;)Lorg/threeten/bp/zone/ZoneRulesProvider;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lorg/threeten/bp/zone/ZoneRulesProvider;->provideRules(Ljava/lang/String;Z)Lorg/threeten/bp/zone/ZoneRules;

    move-result-object v0

    return-object v0
.end method

.method public static getVersions(Ljava/lang/String;)Ljava/util/NavigableMap;
    .locals 1
    .param p0, "zoneId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/NavigableMap",
            "<",
            "Ljava/lang/String;",
            "Lorg/threeten/bp/zone/ZoneRules;",
            ">;"
        }
    .end annotation

    .prologue
    .line 161
    const-string v0, "zoneId"

    invoke-static {p0, v0}, Lorg/threeten/bp/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 162
    invoke-static {p0}, Lorg/threeten/bp/zone/ZoneRulesProvider;->getProvider(Ljava/lang/String;)Lorg/threeten/bp/zone/ZoneRulesProvider;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/threeten/bp/zone/ZoneRulesProvider;->provideVersions(Ljava/lang/String;)Ljava/util/NavigableMap;

    move-result-object v0

    return-object v0
.end method

.method public static refresh()Z
    .locals 4

    .prologue
    .line 239
    const/4 v0, 0x0

    .line 240
    .local v0, "changed":Z
    sget-object v3, Lorg/threeten/bp/zone/ZoneRulesProvider;->PROVIDERS:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/threeten/bp/zone/ZoneRulesProvider;

    .line 241
    .local v2, "provider":Lorg/threeten/bp/zone/ZoneRulesProvider;
    invoke-virtual {v2}, Lorg/threeten/bp/zone/ZoneRulesProvider;->provideRefresh()Z

    move-result v3

    or-int/2addr v0, v3

    goto :goto_0

    .line 243
    .end local v2    # "provider":Lorg/threeten/bp/zone/ZoneRulesProvider;
    :cond_0
    return v0
.end method

.method public static registerProvider(Lorg/threeten/bp/zone/ZoneRulesProvider;)V
    .locals 1
    .param p0, "provider"    # Lorg/threeten/bp/zone/ZoneRulesProvider;

    .prologue
    .line 200
    const-string v0, "provider"

    invoke-static {p0, v0}, Lorg/threeten/bp/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 201
    invoke-static {p0}, Lorg/threeten/bp/zone/ZoneRulesProvider;->registerProvider0(Lorg/threeten/bp/zone/ZoneRulesProvider;)V

    .line 202
    sget-object v0, Lorg/threeten/bp/zone/ZoneRulesProvider;->PROVIDERS:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 203
    return-void
.end method

.method private static registerProvider0(Lorg/threeten/bp/zone/ZoneRulesProvider;)V
    .locals 6
    .param p0, "provider"    # Lorg/threeten/bp/zone/ZoneRulesProvider;

    .prologue
    .line 212
    invoke-virtual {p0}, Lorg/threeten/bp/zone/ZoneRulesProvider;->provideZoneIds()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 213
    .local v2, "zoneId":Ljava/lang/String;
    const-string v3, "zoneId"

    invoke-static {v2, v3}, Lorg/threeten/bp/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 214
    sget-object v3, Lorg/threeten/bp/zone/ZoneRulesProvider;->ZONES:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v3, v2, p0}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/threeten/bp/zone/ZoneRulesProvider;

    .line 215
    .local v1, "old":Lorg/threeten/bp/zone/ZoneRulesProvider;
    if-eqz v1, :cond_0

    .line 216
    new-instance v3, Lorg/threeten/bp/zone/ZoneRulesException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to register zone as one already registered with that ID: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", currently loading from provider: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/threeten/bp/zone/ZoneRulesException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 221
    .end local v1    # "old":Lorg/threeten/bp/zone/ZoneRulesProvider;
    .end local v2    # "zoneId":Ljava/lang/String;
    :cond_1
    return-void
.end method


# virtual methods
.method protected provideRefresh()Z
    .locals 1

    .prologue
    .line 319
    const/4 v0, 0x0

    return v0
.end method

.method protected abstract provideRules(Ljava/lang/String;Z)Lorg/threeten/bp/zone/ZoneRules;
.end method

.method protected abstract provideVersions(Ljava/lang/String;)Ljava/util/NavigableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/NavigableMap",
            "<",
            "Ljava/lang/String;",
            "Lorg/threeten/bp/zone/ZoneRules;",
            ">;"
        }
    .end annotation
.end method

.method protected abstract provideZoneIds()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method
