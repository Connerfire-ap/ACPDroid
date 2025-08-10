.class public interface abstract Lcom/duckduckgo/app/di/ActivityBindingModule_BrowserActivity$BrowserActivitySubcomponent;
.super Ljava/lang/Object;
.source "ActivityBindingModule_BrowserActivity.java"

# interfaces
.implements Ldagger/android/AndroidInjector;


# annotations
.annotation runtime Lcom/duckduckgo/app/di/ActivityScoped;
.end annotation

.annotation runtime Ldagger/Subcomponent;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/duckduckgo/app/di/ActivityBindingModule_BrowserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "BrowserActivitySubcomponent"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/duckduckgo/app/di/ActivityBindingModule_BrowserActivity$BrowserActivitySubcomponent$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/android/AndroidInjector<",
        "Lcom/duckduckgo/app/browser/BrowserActivity;",
        ">;"
    }
.end annotation
