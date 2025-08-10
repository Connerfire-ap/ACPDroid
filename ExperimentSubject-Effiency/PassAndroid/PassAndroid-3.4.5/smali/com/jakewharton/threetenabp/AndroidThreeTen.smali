.class public final Lcom/jakewharton/threetenabp/AndroidThreeTen;
.super Ljava/lang/Object;
.source "AndroidThreeTen.java"


# static fields
.field private static final initialized:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    sput-object v0, Lcom/jakewharton/threetenabp/AndroidThreeTen;->initialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "No instances."

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public static init(Landroid/app/Application;)V
    .locals 0
    .param p0, "application"    # Landroid/app/Application;

    .prologue
    .line 16
    invoke-static {p0}, Lcom/jakewharton/threetenabp/AndroidThreeTen;->init(Landroid/content/Context;)V

    .line 17
    return-void
.end method

.method public static init(Landroid/content/Context;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 20
    sget-object v3, Lcom/jakewharton/threetenabp/AndroidThreeTen;->initialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 41
    :goto_0
    return-void

    .line 25
    :cond_0
    const/4 v1, 0x0

    .line 27
    .local v1, "is":Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    const-string v4, "org/threeten/bp/TZDB.dat"

    invoke-virtual {v3, v4}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 28
    new-instance v2, Lorg/threeten/bp/zone/TzdbZoneRulesProvider;

    invoke-direct {v2, v1}, Lorg/threeten/bp/zone/TzdbZoneRulesProvider;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    .local v2, "provider":Lorg/threeten/bp/zone/TzdbZoneRulesProvider;
    if-eqz v1, :cond_1

    .line 34
    :try_start_1
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 40
    :cond_1
    :goto_1
    invoke-static {v2}, Lorg/threeten/bp/zone/ZoneRulesProvider;->registerProvider(Lorg/threeten/bp/zone/ZoneRulesProvider;)V

    goto :goto_0

    .line 29
    .end local v2    # "provider":Lorg/threeten/bp/zone/TzdbZoneRulesProvider;
    :catch_0
    move-exception v0

    .line 30
    .local v0, "e":Ljava/io/IOException;
    :try_start_2
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "TZDB.dat missing from assets."

    invoke-direct {v3, v4, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 32
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v3

    if-eqz v1, :cond_2

    .line 34
    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 36
    :cond_2
    :goto_2
    throw v3

    .line 35
    .restart local v2    # "provider":Lorg/threeten/bp/zone/TzdbZoneRulesProvider;
    :catch_1
    move-exception v3

    goto :goto_1

    .end local v2    # "provider":Lorg/threeten/bp/zone/TzdbZoneRulesProvider;
    :catch_2
    move-exception v4

    goto :goto_2
.end method
