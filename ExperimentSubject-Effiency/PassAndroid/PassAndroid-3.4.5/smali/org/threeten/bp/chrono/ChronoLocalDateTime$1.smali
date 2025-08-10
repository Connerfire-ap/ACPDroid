.class final Lorg/threeten/bp/chrono/ChronoLocalDateTime$1;
.super Ljava/lang/Object;
.source "ChronoLocalDateTime.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/threeten/bp/chrono/ChronoLocalDateTime;
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
        "Lorg/threeten/bp/chrono/ChronoLocalDateTime",
        "<*>;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 116
    check-cast p1, Lorg/threeten/bp/chrono/ChronoLocalDateTime;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lorg/threeten/bp/chrono/ChronoLocalDateTime;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lorg/threeten/bp/chrono/ChronoLocalDateTime$1;->compare(Lorg/threeten/bp/chrono/ChronoLocalDateTime;Lorg/threeten/bp/chrono/ChronoLocalDateTime;)I

    move-result v0

    return v0
.end method

.method public compare(Lorg/threeten/bp/chrono/ChronoLocalDateTime;Lorg/threeten/bp/chrono/ChronoLocalDateTime;)I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/threeten/bp/chrono/ChronoLocalDateTime",
            "<*>;",
            "Lorg/threeten/bp/chrono/ChronoLocalDateTime",
            "<*>;)I"
        }
    .end annotation

    .prologue
    .line 119
    .local p1, "datetime1":Lorg/threeten/bp/chrono/ChronoLocalDateTime;, "Lorg/threeten/bp/chrono/ChronoLocalDateTime<*>;"
    .local p2, "datetime2":Lorg/threeten/bp/chrono/ChronoLocalDateTime;, "Lorg/threeten/bp/chrono/ChronoLocalDateTime<*>;"
    invoke-virtual {p1}, Lorg/threeten/bp/chrono/ChronoLocalDateTime;->toLocalDate()Lorg/threeten/bp/chrono/ChronoLocalDate;

    move-result-object v1

    invoke-virtual {v1}, Lorg/threeten/bp/chrono/ChronoLocalDate;->toEpochDay()J

    move-result-wide v2

    invoke-virtual {p2}, Lorg/threeten/bp/chrono/ChronoLocalDateTime;->toLocalDate()Lorg/threeten/bp/chrono/ChronoLocalDate;

    move-result-object v1

    invoke-virtual {v1}, Lorg/threeten/bp/chrono/ChronoLocalDate;->toEpochDay()J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Lorg/threeten/bp/jdk8/Jdk8Methods;->compareLongs(JJ)I

    move-result v0

    .line 120
    .local v0, "cmp":I
    if-nez v0, :cond_0

    .line 121
    invoke-virtual {p1}, Lorg/threeten/bp/chrono/ChronoLocalDateTime;->toLocalTime()Lorg/threeten/bp/LocalTime;

    move-result-object v1

    invoke-virtual {v1}, Lorg/threeten/bp/LocalTime;->toNanoOfDay()J

    move-result-wide v2

    invoke-virtual {p2}, Lorg/threeten/bp/chrono/ChronoLocalDateTime;->toLocalTime()Lorg/threeten/bp/LocalTime;

    move-result-object v1

    invoke-virtual {v1}, Lorg/threeten/bp/LocalTime;->toNanoOfDay()J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Lorg/threeten/bp/jdk8/Jdk8Methods;->compareLongs(JJ)I

    move-result v0

    .line 123
    :cond_0
    return v0
.end method
