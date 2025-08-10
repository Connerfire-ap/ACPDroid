.class final Lorg/threeten/bp/chrono/ChronoLocalDate$1;
.super Ljava/lang/Object;
.source "ChronoLocalDate.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/threeten/bp/chrono/ChronoLocalDate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lorg/threeten/bp/chrono/ChronoLocalDate;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 244
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 244
    check-cast p1, Lorg/threeten/bp/chrono/ChronoLocalDate;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lorg/threeten/bp/chrono/ChronoLocalDate;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lorg/threeten/bp/chrono/ChronoLocalDate$1;->compare(Lorg/threeten/bp/chrono/ChronoLocalDate;Lorg/threeten/bp/chrono/ChronoLocalDate;)I

    move-result v0

    return v0
.end method

.method public compare(Lorg/threeten/bp/chrono/ChronoLocalDate;Lorg/threeten/bp/chrono/ChronoLocalDate;)I
    .locals 4
    .param p1, "date1"    # Lorg/threeten/bp/chrono/ChronoLocalDate;
    .param p2, "date2"    # Lorg/threeten/bp/chrono/ChronoLocalDate;

    .prologue
    .line 247
    invoke-virtual {p1}, Lorg/threeten/bp/chrono/ChronoLocalDate;->toEpochDay()J

    move-result-wide v0

    invoke-virtual {p2}, Lorg/threeten/bp/chrono/ChronoLocalDate;->toEpochDay()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lorg/threeten/bp/jdk8/Jdk8Methods;->compareLongs(JJ)I

    move-result v0

    return v0
.end method
