.class public Lorg/ligi/passandroid/App;
.super Landroid/app/Application;
.source "App.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/ligi/passandroid/App$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\u0008\u0016\u0018\u0000 \t2\u00020\u0001:\u0001\tB\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0003\u001a\u00020\u0004H\u0016J\u0008\u0010\u0005\u001a\u00020\u0006H\u0002J\u0008\u0010\u0007\u001a\u00020\u0006H\u0016J\u0008\u0010\u0008\u001a\u00020\u0006H\u0016\u00a8\u0006\n"
    }
    d2 = {
        "Lorg/ligi/passandroid/App;",
        "Landroid/app/Application;",
        "()V",
        "createKodein",
        "Lcom/github/salomonbrys/kodein/Kodein$Module;",
        "initTraceDroid",
        "",
        "installLeakCanary",
        "onCreate",
        "Companion",
        "PassAndroid-3.4.5_noMapsNoAnalyticsForFDroidDebug"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x9
    }
.end annotation


# static fields
.field public static final Companion:Lorg/ligi/passandroid/App$Companion;

.field public static kodein:Lcom/github/salomonbrys/kodein/Kodein;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final passStore$delegate:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final settings$delegate:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final tracker$delegate:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    new-instance v0, Lorg/ligi/passandroid/App$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/ligi/passandroid/App$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lorg/ligi/passandroid/App;->Companion:Lorg/ligi/passandroid/App$Companion;

    .line 61
    sget-object v0, Lorg/ligi/passandroid/App$Companion$tracker$2;->INSTANCE:Lorg/ligi/passandroid/App$Companion$tracker$2;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lorg/ligi/passandroid/App;->tracker$delegate:Lkotlin/Lazy;

    .line 62
    sget-object v0, Lorg/ligi/passandroid/App$Companion$passStore$2;->INSTANCE:Lorg/ligi/passandroid/App$Companion$passStore$2;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lorg/ligi/passandroid/App;->passStore$delegate:Lkotlin/Lazy;

    .line 63
    sget-object v0, Lorg/ligi/passandroid/App$Companion$settings$2;->INSTANCE:Lorg/ligi/passandroid/App$Companion$settings$2;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lorg/ligi/passandroid/App;->settings$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method

.method public static final synthetic access$getPassStore$cp()Lkotlin/Lazy;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 19
    sget-object v0, Lorg/ligi/passandroid/App;->passStore$delegate:Lkotlin/Lazy;

    return-object v0
.end method

.method public static final synthetic access$getSettings$cp()Lkotlin/Lazy;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 19
    sget-object v0, Lorg/ligi/passandroid/App;->settings$delegate:Lkotlin/Lazy;

    return-object v0
.end method

.method public static final synthetic access$getTracker$cp()Lkotlin/Lazy;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 19
    sget-object v0, Lorg/ligi/passandroid/App;->tracker$delegate:Lkotlin/Lazy;

    return-object v0
.end method

.method private final initTraceDroid()V
    .locals 1

    .prologue
    .line 55
    check-cast p0, Landroid/content/Context;

    .end local p0    # "this":Lorg/ligi/passandroid/App;
    invoke-static {p0}, Lorg/ligi/tracedroid/TraceDroid;->init(Landroid/content/Context;)V

    .line 56
    const-string v0, "PassAndroid"

    invoke-static {v0}, Lorg/ligi/tracedroid/logging/Log;->setTAG(Ljava/lang/String;)V

    .line 57
    return-void
.end method


# virtual methods
.method public createKodein()Lcom/github/salomonbrys/kodein/Kodein$Module;
    .locals 5
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 38
    new-instance v1, Lcom/github/salomonbrys/kodein/Kodein$Module;

    const/4 v2, 0x0

    new-instance v0, Lorg/ligi/passandroid/App$createKodein$1;

    invoke-direct {v0, p0}, Lorg/ligi/passandroid/App$createKodein$1;-><init>(Lorg/ligi/passandroid/App;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct {v1, v2, v0, v3, v4}, Lcom/github/salomonbrys/kodein/Kodein$Module;-><init>(ZLkotlin/jvm/functions/Function1;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 48
    return-object v1
.end method

.method public installLeakCanary()V
    .locals 0

    .prologue
    .line 51
    check-cast p0, Landroid/app/Application;

    .end local p0    # "this":Lorg/ligi/passandroid/App;
    invoke-static {p0}, Lcom/squareup/leakcanary/LeakCanary;->install(Landroid/app/Application;)Lcom/squareup/leakcanary/RefWatcher;

    .line 52
    return-void
.end method

.method public onCreate()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 22
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 24
    sget-object v4, Lorg/ligi/passandroid/App;->Companion:Lorg/ligi/passandroid/App$Companion;

    sget-object v5, Lcom/github/salomonbrys/kodein/Kodein;->Companion:Lcom/github/salomonbrys/kodein/Kodein$Companion;

    const/4 v6, 0x0

    new-instance v3, Lorg/ligi/passandroid/App$onCreate$1;

    invoke-direct {v3, p0}, Lorg/ligi/passandroid/App$onCreate$1;-><init>(Lorg/ligi/passandroid/App;)V

    check-cast v3, Lkotlin/jvm/functions/Function1;

    const/4 v7, 0x0

    invoke-static {v5, v6, v3, v8, v7}, Lcom/github/salomonbrys/kodein/Kodein$Companion;->invoke$default(Lcom/github/salomonbrys/kodein/Kodein$Companion;ZLkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lcom/github/salomonbrys/kodein/Kodein;

    move-result-object v3

    invoke-virtual {v4, v3}, Lorg/ligi/passandroid/App$Companion;->setKodein(Lcom/github/salomonbrys/kodein/Kodein;)V

    .line 29
    invoke-static {v8}, Landroid/support/v7/app/AppCompatDelegate;->setCompatVectorFromResourcesEnabled(Z)V

    .line 30
    invoke-virtual {p0}, Lorg/ligi/passandroid/App;->installLeakCanary()V

    move-object v3, p0

    .line 31
    check-cast v3, Landroid/app/Application;

    invoke-static {v3}, Lcom/jakewharton/threetenabp/AndroidThreeTen;->init(Landroid/app/Application;)V

    .line 32
    invoke-direct {p0}, Lorg/ligi/passandroid/App;->initTraceDroid()V

    .line 34
    sget-object v3, Lorg/ligi/passandroid/App;->Companion:Lorg/ligi/passandroid/App$Companion;

    invoke-virtual {v3}, Lorg/ligi/passandroid/App$Companion;->getKodein()Lcom/github/salomonbrys/kodein/Kodein;

    move-result-object v0

    check-cast v0, Lcom/github/salomonbrys/kodein/KodeinAwareBase;

    .line 67
    .local v0, "$receiver$iv":Lcom/github/salomonbrys/kodein/KodeinAwareBase;
    const/4 v2, 0x0

    .line 68
    .local v2, "tag$iv":Ljava/lang/Object;
    invoke-interface {v0}, Lcom/github/salomonbrys/kodein/KodeinAwareBase;->getKodein()Lcom/github/salomonbrys/kodein/Kodein;

    move-result-object v4

    .line 69
    new-instance v3, Lorg/ligi/passandroid/App$onCreate$$inlined$instance$1;

    invoke-direct {v3}, Lorg/ligi/passandroid/App$onCreate$$inlined$instance$1;-><init>()V

    check-cast v3, Lcom/github/salomonbrys/kodein/TypeToken;

    .line 68
    invoke-interface {v4, v3, v2}, Lcom/github/salomonbrys/kodein/Kodein;->Instance(Lcom/github/salomonbrys/kodein/TypeToken;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 34
    check-cast v1, Lorg/ligi/passandroid/model/Settings;

    .line 35
    .local v1, "settings":Lorg/ligi/passandroid/model/Settings;
    invoke-interface {v1}, Lorg/ligi/passandroid/model/Settings;->getNightMode()I

    move-result v3

    invoke-static {v3}, Landroid/support/v7/app/AppCompatDelegate;->setDefaultNightMode(I)V

    .line 36
    return-void
.end method
