.class public Lorg/threeten/bp/format/DateTimeParseException;
.super Lorg/threeten/bp/DateTimeException;
.source "DateTimeParseException.java"


# static fields
.field private static final serialVersionUID:J = 0x3bbd215ce3915525L


# instance fields
.field private final errorIndex:I

.field private final parsedString:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "parsedData"    # Ljava/lang/CharSequence;
    .param p3, "errorIndex"    # I

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lorg/threeten/bp/DateTimeException;-><init>(Ljava/lang/String;)V

    .line 69
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/threeten/bp/format/DateTimeParseException;->parsedString:Ljava/lang/String;

    .line 70
    iput p3, p0, Lorg/threeten/bp/format/DateTimeParseException;->errorIndex:I

    .line 71
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/CharSequence;ILjava/lang/Throwable;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "parsedData"    # Ljava/lang/CharSequence;
    .param p3, "errorIndex"    # I
    .param p4, "cause"    # Ljava/lang/Throwable;

    .prologue
    .line 82
    invoke-direct {p0, p1, p4}, Lorg/threeten/bp/DateTimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 83
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/threeten/bp/format/DateTimeParseException;->parsedString:Ljava/lang/String;

    .line 84
    iput p3, p0, Lorg/threeten/bp/format/DateTimeParseException;->errorIndex:I

    .line 85
    return-void
.end method


# virtual methods
.method public getErrorIndex()I
    .locals 1

    .prologue
    .line 103
    iget v0, p0, Lorg/threeten/bp/format/DateTimeParseException;->errorIndex:I

    return v0
.end method

.method public getParsedString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lorg/threeten/bp/format/DateTimeParseException;->parsedString:Ljava/lang/String;

    return-object v0
.end method
