.class public interface abstract Lcom/duckduckgo/app/di/AppComponent;
.super Ljava/lang/Object;
.source "AppComponent.kt"

# interfaces
.implements Ldagger/android/AndroidInjector;


# annotations
.annotation runtime Ldagger/Component;
    modules = {
        Lcom/duckduckgo/app/di/ApplicationModule;,
        Lcom/duckduckgo/app/di/ActivityBindingModule;,
        Ldagger/android/support/AndroidSupportInjectionModule;,
        Lcom/duckduckgo/app/di/NetworkModule;,
        Lcom/duckduckgo/app/di/PrivacyModule;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/duckduckgo/app/di/AppComponent$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/android/AndroidInjector<",
        "Lcom/duckduckgo/app/global/DuckDuckGoApplication;",
        ">;"
    }
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008g\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\u0003\u00a8\u0006\u0004"
    }
    d2 = {
        "Lcom/duckduckgo/app/di/AppComponent;",
        "Ldagger/android/AndroidInjector;",
        "Lcom/duckduckgo/app/global/DuckDuckGoApplication;",
        "Builder",
        "duckduckgo-0.6.0_debug"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation
