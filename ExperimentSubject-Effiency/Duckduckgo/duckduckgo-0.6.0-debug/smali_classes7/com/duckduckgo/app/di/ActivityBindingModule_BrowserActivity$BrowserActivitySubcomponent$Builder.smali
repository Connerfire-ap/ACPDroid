.class public abstract Lcom/duckduckgo/app/di/ActivityBindingModule_BrowserActivity$BrowserActivitySubcomponent$Builder;
.super Ldagger/android/AndroidInjector$Builder;
.source "ActivityBindingModule_BrowserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/duckduckgo/app/di/ActivityBindingModule_BrowserActivity$BrowserActivitySubcomponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ldagger/android/AndroidInjector$Builder<",
        "Lcom/duckduckgo/app/browser/BrowserActivity;",
        ">;"
    }
.end annotation


# static fields
.field private static transient synthetic $jacocoData:[Z


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/duckduckgo/app/di/ActivityBindingModule_BrowserActivity$BrowserActivitySubcomponent$Builder;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x3fcbf7618771328fL    # 0.21848696816814026

    const/4 v2, 0x1

    const-string v3, "com/duckduckgo/app/di/ActivityBindingModule_BrowserActivity$BrowserActivitySubcomponent$Builder"

    invoke-static {v0, v1, v3, v2}, Lorg/jacoco/agent/rt/internal_8ff85ea/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/duckduckgo/app/di/ActivityBindingModule_BrowserActivity$BrowserActivitySubcomponent$Builder;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>()V
    .locals 3

    invoke-static {}, Lcom/duckduckgo/app/di/ActivityBindingModule_BrowserActivity$BrowserActivitySubcomponent$Builder;->$jacocoInit()[Z

    move-result-object v0

    .line 26
    invoke-direct {p0}, Ldagger/android/AndroidInjector$Builder;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method
