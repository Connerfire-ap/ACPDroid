.class public abstract Lcom/duckduckgo/app/di/AppComponent$Builder;
.super Ldagger/android/AndroidInjector$Builder;
.source "AppComponent.kt"


# annotations
.annotation runtime Ldagger/Component$Builder;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/duckduckgo/app/di/AppComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ldagger/android/AndroidInjector$Builder<",
        "Lcom/duckduckgo/app/global/DuckDuckGoApplication;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0008\'\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005H\'\u00a8\u0006\u0006"
    }
    d2 = {
        "Lcom/duckduckgo/app/di/AppComponent$Builder;",
        "Ldagger/android/AndroidInjector$Builder;",
        "Lcom/duckduckgo/app/global/DuckDuckGoApplication;",
        "()V",
        "application",
        "Landroid/app/Application;",
        "duckduckgo-0.6.0_debug"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# static fields
.field private static transient synthetic $jacocoData:[Z


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/duckduckgo/app/di/AppComponent$Builder;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x76752704cd1043e0L

    const/4 v2, 0x2

    const-string v3, "com/duckduckgo/app/di/AppComponent$Builder"

    invoke-static {v0, v1, v3, v2}, Lorg/jacoco/agent/rt/internal_8ff85ea/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/duckduckgo/app/di/AppComponent$Builder;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>()V
    .locals 3

    invoke-static {}, Lcom/duckduckgo/app/di/AppComponent$Builder;->$jacocoInit()[Z

    move-result-object v0

    .line 39
    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    invoke-direct {p0}, Ldagger/android/AndroidInjector$Builder;-><init>()V

    aput-boolean v2, v0, v2

    return-void
.end method


# virtual methods
.method public abstract application(Landroid/app/Application;)Lcom/duckduckgo/app/di/AppComponent$Builder;
    .annotation runtime Ldagger/BindsInstance;
    .end annotation
.end method
