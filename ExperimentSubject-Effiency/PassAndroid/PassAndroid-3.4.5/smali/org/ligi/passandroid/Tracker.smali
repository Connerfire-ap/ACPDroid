.class public interface abstract Lorg/ligi/passandroid/Tracker;
.super Ljava/lang/Object;
.source "Tracker.java"


# virtual methods
.method public abstract trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/Long;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract trackException(Ljava/lang/String;Ljava/lang/Throwable;Z)V
.end method

.method public abstract trackException(Ljava/lang/String;Z)V
.end method
