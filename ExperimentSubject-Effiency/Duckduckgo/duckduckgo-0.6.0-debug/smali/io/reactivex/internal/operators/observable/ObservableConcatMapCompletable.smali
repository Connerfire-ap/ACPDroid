.class public final Lio/reactivex/internal/operators/observable/ObservableConcatMapCompletable;
.super Lio/reactivex/Completable;
.source "ObservableConcatMapCompletable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/observable/ObservableConcatMapCompletable$SourceObserver;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/Completable;"
    }
.end annotation


# instance fields
.field final bufferSize:I

.field final mapper:Lio/reactivex/functions/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/Function<",
            "-TT;+",
            "Lio/reactivex/CompletableSource;",
            ">;"
        }
    .end annotation
.end field

.field final source:Lio/reactivex/ObservableSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/ObservableSource<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/reactivex/ObservableSource;Lio/reactivex/functions/Function;I)V
    .locals 1
    .param p3, "bufferSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/ObservableSource<",
            "TT;>;",
            "Lio/reactivex/functions/Function<",
            "-TT;+",
            "Lio/reactivex/CompletableSource;",
            ">;I)V"
        }
    .end annotation

    .line 34
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableConcatMapCompletable;, "Lio/reactivex/internal/operators/observable/ObservableConcatMapCompletable<TT;>;"
    .local p1, "source":Lio/reactivex/ObservableSource;, "Lio/reactivex/ObservableSource<TT;>;"
    .local p2, "mapper":Lio/reactivex/functions/Function;, "Lio/reactivex/functions/Function<-TT;+Lio/reactivex/CompletableSource;>;"
    invoke-direct {p0}, Lio/reactivex/Completable;-><init>()V

    .line 35
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableConcatMapCompletable;->source:Lio/reactivex/ObservableSource;

    .line 36
    iput-object p2, p0, Lio/reactivex/internal/operators/observable/ObservableConcatMapCompletable;->mapper:Lio/reactivex/functions/Function;

    .line 37
    const/16 v0, 0x8

    invoke-static {v0, p3}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lio/reactivex/internal/operators/observable/ObservableConcatMapCompletable;->bufferSize:I

    .line 38
    return-void
.end method


# virtual methods
.method public subscribeActual(Lio/reactivex/CompletableObserver;)V
    .locals 4
    .param p1, "observer"    # Lio/reactivex/CompletableObserver;

    .line 41
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableConcatMapCompletable;, "Lio/reactivex/internal/operators/observable/ObservableConcatMapCompletable<TT;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableConcatMapCompletable;->source:Lio/reactivex/ObservableSource;

    new-instance v1, Lio/reactivex/internal/operators/observable/ObservableConcatMapCompletable$SourceObserver;

    iget-object v2, p0, Lio/reactivex/internal/operators/observable/ObservableConcatMapCompletable;->mapper:Lio/reactivex/functions/Function;

    iget v3, p0, Lio/reactivex/internal/operators/observable/ObservableConcatMapCompletable;->bufferSize:I

    invoke-direct {v1, p1, v2, v3}, Lio/reactivex/internal/operators/observable/ObservableConcatMapCompletable$SourceObserver;-><init>(Lio/reactivex/CompletableObserver;Lio/reactivex/functions/Function;I)V

    invoke-interface {v0, v1}, Lio/reactivex/ObservableSource;->subscribe(Lio/reactivex/Observer;)V

    .line 42
    return-void
.end method
